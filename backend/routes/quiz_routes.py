from flask import Blueprint, render_template, request, redirect, url_for, flash, jsonify
from flask_login import login_required, current_user
from backend.models import (
    db, Quiz, Question, AnswerOption, QuizAttempt, 
    StudentAnswer, Enrollment, Module
)
from datetime import datetime
from sqlalchemy import func

quiz_bp = Blueprint('quiz', __name__)


@quiz_bp.route('/<int:quiz_id>')
@login_required
def view_quiz(quiz_id):
    """View quiz details and instructions"""
    quiz = Quiz.query.get_or_404(quiz_id)
    module = Module.query.get(quiz.module_id)
    course = module.course
    
    # Check enrollment
    enrollment = Enrollment.query.filter_by(
        student_id=current_user.user_id,
        course_id=course.course_id
    ).first()
    
    if not enrollment:
        flash('You must be enrolled in this course to take quizzes.', 'warning')
        return redirect(url_for('course.course_detail', course_id=course.course_id))
    
    # Get previous attempts
    attempts = QuizAttempt.query.filter_by(
        enrollment_id=enrollment.enrollment_id,
        quiz_id=quiz_id
    ).order_by(QuizAttempt.attempt_number.desc()).all()
    
    # Check if max attempts reached
    can_attempt = len(attempts) < quiz.max_attempts
    
    # Get best attempt
    best_attempt = None
    if attempts:
        best_attempt = max(attempts, key=lambda a: a.percentage if a.percentage else 0)
    
    return render_template('quiz/view.html',
                         quiz=quiz,
                         module=module,
                         course=course,
                         enrollment=enrollment,
                         attempts=attempts,
                         can_attempt=can_attempt,
                         best_attempt=best_attempt)


@quiz_bp.route('/<int:quiz_id>/start', methods=['POST'])
@login_required
def start_quiz(quiz_id):
    """Start a new quiz attempt"""
    quiz = Quiz.query.get_or_404(quiz_id)
    module = Module.query.get(quiz.module_id)
    course = module.course
    
    # Check enrollment
    enrollment = Enrollment.query.filter_by(
        student_id=current_user.user_id,
        course_id=course.course_id
    ).first()
    
    if not enrollment:
        flash('You must be enrolled in this course.', 'warning')
        return redirect(url_for('course.course_detail', course_id=course.course_id))
    
    # Check previous attempts
    attempt_count = QuizAttempt.query.filter_by(
        enrollment_id=enrollment.enrollment_id,
        quiz_id=quiz_id
    ).count()
    
    if attempt_count >= quiz.max_attempts:
        flash(f'You have reached the maximum number of attempts ({quiz.max_attempts}) for this quiz.', 'warning')
        return redirect(url_for('quiz.view_quiz', quiz_id=quiz_id))
    
    try:
        # Create new attempt
        attempt = QuizAttempt(
            enrollment_id=enrollment.enrollment_id,
            quiz_id=quiz_id,
            attempt_number=attempt_count + 1,
            started_at=datetime.utcnow()
        )
        db.session.add(attempt)
        db.session.commit()
        
        return redirect(url_for('quiz.take_quiz', attempt_id=attempt.attempt_id))
    
    except Exception as e:
        db.session.rollback()
        flash('An error occurred starting the quiz.', 'danger')
        print(f"Start quiz error: {str(e)}")
        return redirect(url_for('quiz.view_quiz', quiz_id=quiz_id))


@quiz_bp.route('/attempt/<int:attempt_id>')
@login_required
def take_quiz(attempt_id):
    """Take the quiz"""
    attempt = QuizAttempt.query.get_or_404(attempt_id)
    
    # Verify ownership
    if attempt.enrollment.student_id != current_user.user_id:
        flash('Unauthorized access.', 'danger')
        return redirect(url_for('course.student_dashboard'))
    
    # Check if already submitted
    if attempt.submitted_at:
        flash('This quiz has already been submitted.', 'info')
        return redirect(url_for('quiz.view_results', attempt_id=attempt_id))
    
    quiz = attempt.quiz
    
    # Get all questions with options
    questions = Question.query.filter_by(
        quiz_id=quiz.quiz_id
    ).order_by(Question.order_index).all()
    
    # Get existing answers (if any)
    existing_answers = {
        sa.question_id: sa 
        for sa in StudentAnswer.query.filter_by(attempt_id=attempt_id).all()
    }
    
    return render_template('quiz/take.html',
                         quiz=quiz,
                         attempt=attempt,
                         questions=questions,
                         existing_answers=existing_answers)


@quiz_bp.route('/attempt/<int:attempt_id>/submit', methods=['POST'])
@login_required
def submit_quiz(attempt_id):
    """Submit quiz answers"""
    attempt = QuizAttempt.query.get_or_404(attempt_id)
    
    # Verify ownership
    if attempt.enrollment.student_id != current_user.user_id:
        return jsonify({'error': 'Unauthorized'}), 403
    
    # Check if already submitted
    if attempt.submitted_at:
        return jsonify({'error': 'Quiz already submitted'}), 400
    
    quiz = attempt.quiz
    questions = Question.query.filter_by(quiz_id=quiz.quiz_id).all()
    
    try:
        total_points = 0
        earned_points = 0
        
        # Process each question
        for question in questions:
            total_points += float(question.points)
            
            # Get submitted answer
            answer_key = f'question_{question.question_id}'
            submitted_answer = request.form.get(answer_key)
            
            if not submitted_answer:
                # No answer provided - mark as incorrect
                student_answer = StudentAnswer(
                    attempt_id=attempt_id,
                    question_id=question.question_id,
                    is_correct=False,
                    points_earned=0.00
                )
                db.session.add(student_answer)
                continue
            
            # Check if answer is correct
            if question.question_type in ['multiple_choice', 'true_false']:
                selected_option_id = int(submitted_answer)
                selected_option = AnswerOption.query.get(selected_option_id)
                
                is_correct = selected_option.is_correct if selected_option else False
                points_earned_for_question = float(question.points) if is_correct else 0.00
                
                student_answer = StudentAnswer(
                    attempt_id=attempt_id,
                    question_id=question.question_id,
                    selected_option_id=selected_option_id,
                    is_correct=is_correct,
                    points_earned=points_earned_for_question
                )
                
                earned_points += points_earned_for_question
                
            elif question.question_type == 'short_answer':
                # For short answer, save the text (manual grading would be needed)
                student_answer = StudentAnswer(
                    attempt_id=attempt_id,
                    question_id=question.question_id,
                    answer_text=submitted_answer,
                    is_correct=None,  # Needs manual grading
                    points_earned=0.00
                )
            
            db.session.add(student_answer)
        
        # Calculate percentage
        percentage = (earned_points / total_points * 100) if total_points > 0 else 0
        passed = percentage >= float(quiz.passing_score)
        
        # Calculate time taken
        time_taken = (datetime.utcnow() - attempt.started_at).total_seconds() / 60
        
        # Update attempt
        attempt.score = earned_points
        attempt.total_points = total_points
        attempt.percentage = percentage
        attempt.passed = passed
        attempt.submitted_at = datetime.utcnow()
        attempt.time_taken_minutes = int(time_taken)
        
        db.session.commit()
        
        flash(f'Quiz submitted! You scored {percentage:.1f}%', 'success')
        return redirect(url_for('quiz.view_results', attempt_id=attempt_id))
    
    except Exception as e:
        db.session.rollback()
        flash('An error occurred submitting the quiz.', 'danger')
        print(f"Submit quiz error: {str(e)}")
        return redirect(url_for('quiz.take_quiz', attempt_id=attempt_id))


@quiz_bp.route('/attempt/<int:attempt_id>/results')
@login_required
def view_results(attempt_id):
    """View quiz results"""
    attempt = QuizAttempt.query.get_or_404(attempt_id)
    
    # Verify ownership
    if attempt.enrollment.student_id != current_user.user_id:
        flash('Unauthorized access.', 'danger')
        return redirect(url_for('course.student_dashboard'))
    
    # Check if submitted
    if not attempt.submitted_at:
        flash('Quiz not yet submitted.', 'warning')
        return redirect(url_for('quiz.take_quiz', attempt_id=attempt_id))
    
    quiz = attempt.quiz
    
    # Get all questions with student answers
    questions = Question.query.filter_by(quiz_id=quiz.quiz_id).order_by(Question.order_index).all()
    
    student_answers = {
        sa.question_id: sa 
        for sa in StudentAnswer.query.filter_by(attempt_id=attempt_id).all()
    }
    
    ## Get question details with correct answers
    question_details = []
    for question in questions:
        student_answer = student_answers.get(question.question_id)
        
        question_data = {
            'question': question,
            'student_answer': student_answer,
            'correct_option': None,
            'selected_option': None
        }
        
        # Get correct answer option
        if question.question_type in ['multiple_choice', 'true_false']:
            correct_option = AnswerOption.query.filter_by(
                question_id=question.question_id,
                is_correct=True
            ).first()
            question_data['correct_option'] = correct_option
            
            if student_answer and student_answer.selected_option_id:
                selected_option = AnswerOption.query.get(student_answer.selected_option_id)
                question_data['selected_option'] = selected_option
        
        question_details.append(question_data)
    
    return render_template('quiz/results.html',
                         quiz=quiz,
                         attempt=attempt,
                         question_details=question_details)


@quiz_bp.route('/api/quiz/<int:quiz_id>/statistics')
@login_required
def quiz_statistics(quiz_id):
    """API endpoint for quiz statistics (for instructors)"""
    quiz = Quiz.query.get_or_404(quiz_id)
    module = Module.query.get(quiz.module_id)
    course = module.course
    
    # Check if user is instructor or admin
    if current_user.user_id != course.instructor_id and current_user.role != 'admin':
        return jsonify({'error': 'Unauthorized'}), 403
    
    # Get all attempts for this quiz
    attempts = QuizAttempt.query.filter_by(
        quiz_id=quiz_id,
        submitted_at=db.not_(None)
    ).all()
    
    if not attempts:
        return jsonify({
            'quiz_id': quiz_id,
            'total_attempts': 0,
            'average_score': 0,
            'pass_rate': 0,
            'average_time': 0
        })
    
    # Calculate statistics
    total_attempts = len(attempts)
    average_score = sum(float(a.percentage) for a in attempts) / total_attempts
    passed_attempts = sum(1 for a in attempts if a.passed)
    pass_rate = (passed_attempts / total_attempts * 100) if total_attempts > 0 else 0
    average_time = sum(a.time_taken_minutes for a in attempts if a.time_taken_minutes) / len([a for a in attempts if a.time_taken_minutes])
    
    return jsonify({
        'quiz_id': quiz_id,
        'quiz_title': quiz.title,
        'total_attempts': total_attempts,
        'average_score': round(average_score, 2),
        'pass_rate': round(pass_rate, 2),
        'average_time_minutes': round(average_time, 2)
    })