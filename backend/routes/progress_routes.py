from flask import Blueprint, jsonify, request
from flask_login import login_required, current_user
from backend.models import (
    db, Enrollment, ModuleProgress, ResourceCompletion, 
    QuizAttempt, Module, Resource
)
from datetime import datetime
from sqlalchemy import func

progress_bp = Blueprint('progress', __name__)


@progress_bp.route('/module/<int:module_id>/complete', methods=['POST'])
@login_required
def complete_module(module_id):
    """Mark a module as completed"""
    # Get the module
    module = Module.query.get_or_404(module_id)
    
    # Get enrollment
    enrollment = Enrollment.query.filter_by(
        student_id=current_user.user_id,
        course_id=module.course_id
    ).first()
    
    if not enrollment:
        return jsonify({'error': 'Not enrolled in this course'}), 403
    
    # Get or create module progress
    module_progress = ModuleProgress.query.filter_by(
        enrollment_id=enrollment.enrollment_id,
        module_id=module_id
    ).first()
    
    if not module_progress:
        module_progress = ModuleProgress(
            enrollment_id=enrollment.enrollment_id,
            module_id=module_id,
            status='in_progress',
            started_at=datetime.utcnow()
        )
        db.session.add(module_progress)
    
    try:
        # Update module progress
        if module_progress.status != 'completed':
            module_progress.status = 'completed'
            module_progress.completed_at = datetime.utcnow()
            
            # Update overall course progress
            update_course_progress(enrollment.enrollment_id)
            
            db.session.commit()
            
            return jsonify({
                'success': True,
                'message': 'Module marked as completed',
                'module_id': module_id,
                'course_progress': float(enrollment.progress_percentage)
            })
        else:
            return jsonify({
                'success': True,
                'message': 'Module already completed',
                'module_id': module_id
            })
    
    except Exception as e:
        db.session.rollback()
        print(f"Complete module error: {str(e)}")
        return jsonify({'error': 'An error occurred'}), 500


@progress_bp.route('/resource/<int:resource_id>/complete', methods=['POST'])
@login_required
def complete_resource(resource_id):
    """Mark a resource as completed"""
    resource = Resource.query.get_or_404(resource_id)
    module = Module.query.get(resource.module_id)
    
    # Get enrollment
    enrollment = Enrollment.query.filter_by(
        student_id=current_user.user_id,
        course_id=module.course_id
    ).first()
    
    if not enrollment:
        return jsonify({'error': 'Not enrolled in this course'}), 403
    
    # Check if already completed
    existing = ResourceCompletion.query.filter_by(
        enrollment_id=enrollment.enrollment_id,
        resource_id=resource_id
    ).first()
    
    if existing:
        return jsonify({
            'success': True,
            'message': 'Resource already completed'
        })
    
    try:
        # Get time spent from request
        time_spent = request.json.get('time_spent_minutes', 0) if request.is_json else 0
        
        # Create completion record
        completion = ResourceCompletion(
            enrollment_id=enrollment.enrollment_id,
            resource_id=resource_id,
            time_spent_minutes=time_spent
        )
        db.session.add(completion)
        
        # Update module progress to in_progress if not started
        module_progress = ModuleProgress.query.filter_by(
            enrollment_id=enrollment.enrollment_id,
            module_id=module.module_id
        ).first()
        
        if module_progress and module_progress.status == 'not_started':
            module_progress.status = 'in_progress'
            module_progress.started_at = datetime.utcnow()
        
        db.session.commit()
        
        return jsonify({
            'success': True,
            'message': 'Resource marked as completed',
            'resource_id': resource_id
        })
    
    except Exception as e:
        db.session.rollback()
        print(f"Complete resource error: {str(e)}")
        return jsonify({'error': 'An error occurred'}), 500


@progress_bp.route('/enrollment/<int:enrollment_id>/summary')
@login_required
def get_progress_summary(enrollment_id):
    """Get detailed progress summary for an enrollment"""
    enrollment = Enrollment.query.get_or_404(enrollment_id)
    
    # Verify ownership
    if enrollment.student_id != current_user.user_id:
        return jsonify({'error': 'Unauthorized'}), 403
    
    # Get all modules for the course
    modules = Module.query.filter_by(
        course_id=enrollment.course_id,
        is_published=True
    ).order_by(Module.order_index).all()
    
    module_summaries = []
    
    for module in modules:
        # Get module progress
        module_progress = ModuleProgress.query.filter_by(
            enrollment_id=enrollment_id,
            module_id=module.module_id
        ).first()
        
        # Count resources
        total_resources = Resource.query.filter_by(module_id=module.module_id).count()
        completed_resources = ResourceCompletion.query.join(Resource).filter(
            ResourceCompletion.enrollment_id == enrollment_id,
            Resource.module_id == module.module_id
        ).count()
        
        # Get quiz attempts
        quiz_attempts = []
        quizzes = module.quizzes.all()
        for quiz in quizzes:
            best_attempt = QuizAttempt.query.filter_by(
                enrollment_id=enrollment_id,
                quiz_id=quiz.quiz_id
            ).order_by(QuizAttempt.percentage.desc()).first()
            
            quiz_attempts.append({
                'quiz_id': quiz.quiz_id,
                'quiz_title': quiz.title,
                'best_score': float(best_attempt.percentage) if best_attempt else None,
                'passed': best_attempt.passed if best_attempt else False,
                'attempts': QuizAttempt.query.filter_by(
                    enrollment_id=enrollment_id,
                    quiz_id=quiz.quiz_id
                ).count()
            })
        
        module_summaries.append({
            'module_id': module.module_id,
            'module_number': module.module_number,
            'module_title': module.title,
            'status': module_progress.status if module_progress else 'not_started',
            'started_at': module_progress.started_at.isoformat() if module_progress and module_progress.started_at else None,
            'completed_at': module_progress.completed_at.isoformat() if module_progress and module_progress.completed_at else None,
            'total_resources': total_resources,
            'completed_resources': completed_resources,
            'resource_completion_rate': (completed_resources / total_resources * 100) if total_resources > 0 else 0,
            'quizzes': quiz_attempts
        })
    
    return jsonify({
        'enrollment_id': enrollment_id,
        'course_title': enrollment.course.title,
        'overall_progress': float(enrollment.progress_percentage),
        'status': enrollment.status,
        'enrollment_date': enrollment.enrollment_date.isoformat(),
        'modules': module_summaries
    })


@progress_bp.route('/course/<int:course_id>/leaderboard')
@login_required
def course_leaderboard(course_id):
    """Get leaderboard for a course (top students by progress)"""
    # Get all enrollments for the course
    enrollments = Enrollment.query.filter_by(
        course_id=course_id,
        status='active'
    ).order_by(Enrollment.progress_percentage.desc()).limit(10).all()
    
    leaderboard = []
    for rank, enrollment in enumerate(enrollments, 1):
        # Calculate quiz average
        quiz_attempts = QuizAttempt.query.filter_by(
            enrollment_id=enrollment.enrollment_id,
            passed=True
        ).all()
        
        avg_quiz_score = 0
        if quiz_attempts:
            avg_quiz_score = sum(float(a.percentage) for a in quiz_attempts) / len(quiz_attempts)
        
        leaderboard.append({
            'rank': rank,
            'student_name': enrollment.student.full_name,
            'progress_percentage': float(enrollment.progress_percentage),
            'average_quiz_score': round(avg_quiz_score, 2),
            'enrollment_date': enrollment.enrollment_date.isoformat()
        })
    
    return jsonify({
        'course_id': course_id,
        'leaderboard': leaderboard
    })


def update_course_progress(enrollment_id):
    """
    Helper function to calculate and update overall course progress
    Based on completed modules
    """
    enrollment = Enrollment.query.get(enrollment_id)
    if not enrollment:
        return
    
    # Get all modules for the course
    total_modules = Module.query.filter_by(
        course_id=enrollment.course_id,
        is_published=True
    ).count()
    
    if total_modules == 0:
        return
    
    # Get completed modules
    completed_modules = ModuleProgress.query.filter_by(
        enrollment_id=enrollment_id,
        status='completed'
    ).count()
    
    # Calculate progress percentage
    progress_percentage = (completed_modules / total_modules) * 100
    enrollment.progress_percentage = progress_percentage
    
    # Check if course is completed (all modules done)
    if progress_percentage >= 100:
        enrollment.status = 'completed'
        enrollment.completion_date = datetime.utcnow()
    
    # Don't commit here - let the caller commit


@progress_bp.route('/api/my-progress')
@login_required
def my_overall_progress():
    """Get student's overall progress across all courses"""
    enrollments = Enrollment.query.filter_by(
        student_id=current_user.user_id
    ).all()
    
    total_courses = len(enrollments)
    active_courses = len([e for e in enrollments if e.status == 'active'])
    completed_courses = len([e for e in enrollments if e.status == 'completed'])
    
    # Calculate average progress across active courses
    active_enrollments = [e for e in enrollments if e.status == 'active']
    avg_progress = 0
    if active_enrollments:
        avg_progress = sum(float(e.progress_percentage) for e in active_enrollments) / len(active_enrollments)
    
    # Get total quiz attempts and average score
    all_quiz_attempts = QuizAttempt.query.join(Enrollment).filter(
        Enrollment.student_id == current_user.user_id,
        QuizAttempt.submitted_at.isnot(None)
    ).all()
    
    total_quizzes_taken = len(all_quiz_attempts)
    quizzes_passed = len([a for a in all_quiz_attempts if a.passed])
    
    avg_quiz_score = 0
    if all_quiz_attempts:
        avg_quiz_score = sum(float(a.percentage) for a in all_quiz_attempts) / len(all_quiz_attempts)
    
    return jsonify({
        'total_courses': total_courses,
        'active_courses': active_courses,
        'completed_courses': completed_courses,
        'average_progress': round(avg_progress, 2),
        'total_quizzes_taken': total_quizzes_taken,
        'quizzes_passed': quizzes_passed,
        'average_quiz_score': round(avg_quiz_score, 2)
    })