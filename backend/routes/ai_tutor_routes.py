# backend/routes/ai_tutor_routes.py
"""
AI Tutor Routes - Chat, Recommendations, Explanations
"""

from flask import Blueprint, request, jsonify
from flask_login import login_required, current_user
from datetime import datetime
from ..models import db, ChatSession, ChatMessage, StudyRecommendation, Course, Module, Quiz, Enrollment, QuizAttempt
from ..utils.ai_helpers import get_ai_response, explain_quiz_answer, generate_study_recommendations, summarize_module_content

ai_tutor_bp = Blueprint('ai_tutor', __name__, url_prefix='/api/ai-tutor')


# ============================================
# CHAT ENDPOINTS
# ============================================

@ai_tutor_bp.route('/chat/start', methods=['POST'])
@login_required
def start_chat_session():
    """
    Start a new chat session
    Body: {
        "context_type": "general|course|module|quiz",
        "course_id": (optional),
        "module_id": (optional),
        "quiz_id": (optional)
    }
    """
    data = request.json
    
    # Create new chat session
    session = ChatSession(
        student_id=current_user.user_id,
        context_type=data.get('context_type', 'general'),
        course_id=data.get('course_id'),
        module_id=data.get('module_id'),
        quiz_id=data.get('quiz_id')
    )
    
    db.session.add(session)
    db.session.commit()
    
    # Add welcome message
    welcome_msg = ChatMessage(
        session_id=session.session_id,
        role='assistant',
        content="Hi! I'm your AI tutor. How can I help you today?",
        ai_model='system'
    )
    
    db.session.add(welcome_msg)
    db.session.commit()
    
    return jsonify({
        'success': True,
        'session': session.to_dict(include_messages=True)
    }), 201


@ai_tutor_bp.route('/chat/<int:session_id>/message', methods=['POST'])
@login_required
def send_message(session_id):
    """
    Send a message in a chat session
    Body: {
        "content": "user message",
        "preferred_model": "claude|gpt|gemini" (optional)
    }
    """
    session = ChatSession.query.get_or_404(session_id)
    
    # Verify ownership
    if session.student_id != current_user.user_id:
        return jsonify({'success': False, 'error': 'Unauthorized'}), 403
    
    data = request.json
    user_content = data.get('content', '').strip()
    
    if not user_content:
        return jsonify({'success': False, 'error': 'Message content required'}), 400
    
    # Save user message
    user_msg = ChatMessage(
        session_id=session_id,
        role='user',
        content=user_content
    )
    db.session.add(user_msg)
    
    # Get context data
    context_data = {}
    if session.context_type == 'course' and session.course:
        context_data = session.course.to_dict()
    elif session.context_type == 'module' and session.module:
        context_data = session.module.to_dict()
    elif session.context_type == 'quiz' and session.quiz:
        context_data = session.quiz.to_dict()
    
    # Build message history
    messages = []
    for msg in session.messages.order_by(ChatMessage.created_at).all():
        messages.append({
            'role': msg.role,
            'content': msg.content
        })
    
    # Add current user message
    messages.append({
        'role': 'user',
        'content': user_content
    })
    
    # Get AI response
    ai_response = get_ai_response(
        messages=messages,
        context_type=session.context_type,
        context_data=context_data,
        preferred_model=data.get('preferred_model', 'claude')
    )
    
    # Save AI response
    ai_msg = ChatMessage(
        session_id=session_id,
        role='assistant',
        content=ai_response['content'],
        ai_model=ai_response['model'],
        tokens_used=ai_response['tokens']
    )
    db.session.add(ai_msg)
    
    # Update session activity
    session.last_activity = datetime.utcnow()
    
    db.session.commit()
    
    return jsonify({
        'success': True,
        'user_message': user_msg.to_dict(),
        'ai_message': ai_msg.to_dict()
    }), 200


@ai_tutor_bp.route('/chat/<int:session_id>', methods=['GET'])
@login_required
def get_chat_session(session_id):
    """Get chat session with all messages"""
    session = ChatSession.query.get_or_404(session_id)
    
    if session.student_id != current_user.user_id:
        return jsonify({'success': False, 'error': 'Unauthorized'}), 403
    
    return jsonify({
        'success': True,
        'session': session.to_dict(include_messages=True)
    }), 200


@ai_tutor_bp.route('/chat/sessions', methods=['GET'])
@login_required
def get_user_chat_sessions():
    """Get all chat sessions for current user"""
    sessions = ChatSession.query.filter_by(
        student_id=current_user.user_id,
        is_active=True
    ).order_by(ChatSession.last_activity.desc()).all()
    
    return jsonify({
        'success': True,
        'sessions': [s.to_dict() for s in sessions]
    }), 200


@ai_tutor_bp.route('/chat/<int:session_id>', methods=['DELETE'])
@login_required
def delete_chat_session(session_id):
    """Delete/archive a chat session"""
    session = ChatSession.query.get_or_404(session_id)
    
    if session.student_id != current_user.user_id:
        return jsonify({'success': False, 'error': 'Unauthorized'}), 403
    
    session.is_active = False
    db.session.commit()
    
    return jsonify({'success': True, 'message': 'Session archived'}), 200


# ============================================
# QUIZ EXPLANATION ENDPOINTS
# ============================================

@ai_tutor_bp.route('/explain/quiz-answer', methods=['POST'])
@login_required
def get_quiz_explanation():
    """
    Get explanation for a quiz answer
    Body: {
        "attempt_id": int,
        "question_id": int
    }
    """
    data = request.json
    attempt_id = data.get('attempt_id')
    question_id = data.get('question_id')
    
    # Get the quiz attempt and verify ownership
    attempt = QuizAttempt.query.get_or_404(attempt_id)
    enrollment = Enrollment.query.get_or_404(attempt.enrollment_id)
    
    if enrollment.student_id != current_user.user_id:
        return jsonify({'success': False, 'error': 'Unauthorized'}), 403
    
    # Get the question and student's answer
    from ..models import Question, StudentAnswer, AnswerOption
    
    question = Question.query.get_or_404(question_id)
    student_answer = StudentAnswer.query.filter_by(
        attempt_id=attempt_id,
        question_id=question_id
    ).first_or_404()
    
    # Get correct option
    correct_option = AnswerOption.query.filter_by(
        question_id=question_id,
        is_correct=True
    ).first()
    
    # Get student's selected option
    student_option = student_answer.selected_option
    
    # Generate explanation
    explanation = explain_quiz_answer(
        question_text=question.question_text,
        correct_answer=correct_option.option_text if correct_option else "N/A",
        student_answer=student_option.option_text if student_option else student_answer.answer_text or "No answer",
        context=question.explanation
    )
    
    return jsonify({
        'success': True,
        'explanation': explanation,
        'question': question.to_dict(show_correct=True),
        'student_answer': student_answer.to_dict()
    }), 200


# ============================================
# STUDY RECOMMENDATION ENDPOINTS
# ============================================

@ai_tutor_bp.route('/recommendations/generate/<int:course_id>', methods=['POST'])
@login_required
def generate_recommendations(course_id):
    """
    Generate AI-powered study recommendations for a course
    """
    # Get student's enrollment
    enrollment = Enrollment.query.filter_by(
        student_id=current_user.user_id,
        course_id=course_id
    ).first_or_404()
    
    course = Course.query.get_or_404(course_id)
    
    # Calculate student progress metrics
    total_quizzes = QuizAttempt.query.filter_by(enrollment_id=enrollment.enrollment_id).count()
    avg_score = db.session.query(db.func.avg(QuizAttempt.percentage)).filter_by(
        enrollment_id=enrollment.enrollment_id
    ).scalar() or 0
    
    completed_modules = enrollment.module_progress.filter_by(status='completed').count()
    
    student_progress = {
        'progress_percentage': float(enrollment.progress_percentage),
        'completed_modules': completed_modules,
        'avg_quiz_score': float(avg_score)
    }
    
    # Find weak areas (quizzes with low scores)
    weak_quizzes = QuizAttempt.query.filter(
        QuizAttempt.enrollment_id == enrollment.enrollment_id,
        QuizAttempt.percentage < 70
    ).all()
    
    weak_areas = [attempt.quiz.title for attempt in weak_quizzes[:3]]
    
    # Generate recommendations
    recommendations_data = generate_study_recommendations(
        student_progress=student_progress,
        course_data=course.to_dict(),
        weak_areas=weak_areas if weak_areas else None
    )
    
    # Save recommendations to database
    saved_recommendations = []
    for rec in recommendations_data:
        recommendation = StudyRecommendation(
            student_id=current_user.user_id,
            course_id=course_id,
            recommendation_type=rec.get('type', 'review'),
            title=rec.get('title', 'Study Recommendation'),
            description=rec.get('description', ''),
            priority=rec.get('priority', 'medium'),
            ai_reasoning=rec.get('reasoning', '')
        )
        db.session.add(recommendation)
        saved_recommendations.append(recommendation)
    
    db.session.commit()
    
    return jsonify({
        'success': True,
        'recommendations': [r.to_dict() for r in saved_recommendations]
    }), 201


@ai_tutor_bp.route('/recommendations', methods=['GET'])
@login_required
def get_recommendations():
    """Get all active recommendations for current user"""
    course_id = request.args.get('course_id', type=int)
    
    query = StudyRecommendation.query.filter_by(
        student_id=current_user.user_id,
        is_completed=False
    )
    
    if course_id:
        query = query.filter_by(course_id=course_id)
    
    recommendations = query.order_by(
        StudyRecommendation.priority.desc(),
        StudyRecommendation.created_at.desc()
    ).all()
    
    return jsonify({
        'success': True,
        'recommendations': [r.to_dict() for r in recommendations]
    }), 200


@ai_tutor_bp.route('/recommendations/<int:recommendation_id>/complete', methods=['POST'])
@login_required
def complete_recommendation(recommendation_id):
    """Mark a recommendation as completed"""
    recommendation = StudyRecommendation.query.get_or_404(recommendation_id)
    
    if recommendation.student_id != current_user.user_id:
        return jsonify({'success': False, 'error': 'Unauthorized'}), 403
    
    recommendation.is_completed = True
    recommendation.completed_at = datetime.utcnow()
    
    db.session.commit()
    
    return jsonify({
        'success': True,
        'recommendation': recommendation.to_dict()
    }), 200


# ============================================
# MODULE SUMMARY ENDPOINTS
# ============================================

@ai_tutor_bp.route('/summary/module/<int:module_id>', methods=['GET'])
@login_required
def get_module_summary(module_id):
    """Generate AI summary of module content"""
    module = Module.query.get_or_404(module_id)
    
    # Verify student is enrolled in the course
    enrollment = Enrollment.query.filter_by(
        student_id=current_user.user_id,
        course_id=module.course_id
    ).first()
    
    if not enrollment:
        return jsonify({'success': False, 'error': 'Not enrolled in this course'}), 403
    
    # Generate summary
    summary = summarize_module_content(module.to_dict())
    
    return jsonify({
        'success': True,
        'module_id': module_id,
        'summary': summary
    }), 200


# ============================================
# QUICK HELP ENDPOINT
# ============================================

@ai_tutor_bp.route('/quick-help', methods=['POST'])
@login_required
def quick_help():
    """
    Quick help without creating a full chat session
    Body: {
        "question": "user question",
        "context_type": "general|course|module|quiz",
        "context_id": (optional) course_id, module_id, or quiz_id
    }
    """
    data = request.json
    question = data.get('question', '').strip()
    
    if not question:
        return jsonify({'success': False, 'error': 'Question required'}), 400
    
    context_type = data.get('context_type', 'general')
    context_id = data.get('context_id')
    context_data = {}
    
    # Get context
    if context_type == 'course' and context_id:
        course = Course.query.get(context_id)
        if course:
            context_data = course.to_dict()
    
    elif context_type == 'module' and context_id:
        module = Module.query.get(context_id)
        if module:
            context_data = module.to_dict()
    
    elif context_type == 'quiz' and context_id:
        quiz = Quiz.query.get(context_id)
        if quiz:
            context_data = quiz.to_dict()
    
    # Get AI response
    messages = [{'role': 'user', 'content': question}]
    
    response = get_ai_response(
        messages=messages,
        context_type=context_type,
        context_data=context_data,
        preferred_model=data.get('preferred_model', 'claude')
    )
    
    return jsonify({
        'success': True,
        'question': question,
        'answer': response['content'],
        'model': response['model']
    }), 200


# ============================================
# STATS ENDPOINT
# ============================================

@ai_tutor_bp.route('/stats', methods=['GET'])
@login_required
def get_ai_stats():
    """Get AI tutor usage statistics for current user"""
    total_sessions = ChatSession.query.filter_by(
        student_id=current_user.user_id
    ).count()
    
    total_messages = db.session.query(db.func.count(ChatMessage.message_id)).join(
        ChatSession
    ).filter(
        ChatSession.student_id == current_user.user_id,
        ChatMessage.role == 'user'
    ).scalar() or 0
    
    total_recommendations = StudyRecommendation.query.filter_by(
        student_id=current_user.user_id
    ).count()
    
    completed_recommendations = StudyRecommendation.query.filter_by(
        student_id=current_user.user_id,
        is_completed=True
    ).count()
    
    return jsonify({
        'success': True,
        'stats': {
            'total_chat_sessions': total_sessions,
            'total_questions_asked': total_messages,
            'total_recommendations': total_recommendations,
            'completed_recommendations': completed_recommendations
        }
    }), 200