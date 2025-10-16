from flask import Blueprint, request, redirect, url_for, flash, jsonify
from flask_login import login_required, current_user
from backend.models import db, Course, Enrollment, Module, ModuleProgress
from datetime import datetime

enrollment_bp = Blueprint('enrollment', __name__)


@enrollment_bp.route('/enroll/<int:course_id>', methods=['POST'])
@login_required
def enroll_course(course_id):
    """Enroll in a course"""
    # Check if course exists and is published
    course = Course.query.filter_by(
        course_id=course_id,
        is_published=True
    ).first_or_404()
    
    # Check if already enrolled
    existing_enrollment = Enrollment.query.filter_by(
        student_id=current_user.user_id,
        course_id=course_id
    ).first()
    
    if existing_enrollment:
        if existing_enrollment.status == 'dropped':
            # Re-enroll if previously dropped
            existing_enrollment.status = 'active'
            existing_enrollment.enrollment_date = datetime.utcnow()
            db.session.commit()
            flash(f'Welcome back! You have re-enrolled in {course.title}.', 'success')
        else:
            flash('You are already enrolled in this course.', 'info')
        return redirect(url_for('course.course_detail', course_id=course_id))
    
    try:
        # Create new enrollment
        enrollment = Enrollment(
            student_id=current_user.user_id,
            course_id=course_id,
            status='active',
            progress_percentage=0.00
        )
        db.session.add(enrollment)
        db.session.flush()  # Get enrollment_id
        
        # Create progress records for all modules
        modules = Module.query.filter_by(
            course_id=course_id,
            is_published=True
        ).all()
        
        for module in modules:
            module_progress = ModuleProgress(
                enrollment_id=enrollment.enrollment_id,
                module_id=module.module_id,
                status='not_started'
            )
            db.session.add(module_progress)
        
        db.session.commit()
        
        flash(f'Successfully enrolled in {course.title}!', 'success')
        return redirect(url_for('course.course_detail', course_id=course_id))
    
    except Exception as e:
        db.session.rollback()
        flash('An error occurred during enrollment. Please try again.', 'danger')
        print(f"Enrollment error: {str(e)}")
        return redirect(url_for('course.course_detail', course_id=course_id))


@enrollment_bp.route('/unenroll/<int:enrollment_id>', methods=['POST'])
@login_required
def unenroll_course(enrollment_id):
    """Drop/unenroll from a course"""
    enrollment = Enrollment.query.filter_by(
        enrollment_id=enrollment_id,
        student_id=current_user.user_id
    ).first_or_404()
    
    if enrollment.status == 'completed':
        flash('Cannot unenroll from a completed course.', 'warning')
        return redirect(url_for('course.student_dashboard'))
    
    try:
        enrollment.status = 'dropped'
        db.session.commit()
        
        flash(f'You have unenrolled from {enrollment.course.title}.', 'info')
        return redirect(url_for('course.student_dashboard'))
    
    except Exception as e:
        db.session.rollback()
        flash('An error occurred. Please try again.', 'danger')
        print(f"Unenroll error: {str(e)}")
        return redirect(url_for('course.student_dashboard'))


@enrollment_bp.route('/api/enrollment/<int:enrollment_id>/progress')
@login_required
def get_enrollment_progress(enrollment_id):
    """API endpoint to get enrollment progress details"""
    enrollment = Enrollment.query.filter_by(
        enrollment_id=enrollment_id,
        student_id=current_user.user_id
    ).first_or_404()
    
    # Get module progress
    module_progress_list = ModuleProgress.query.filter_by(
        enrollment_id=enrollment_id
    ).all()
    
    progress_data = {
        'enrollment_id': enrollment_id,
        'course_title': enrollment.course.title,
        'status': enrollment.status,
        'progress_percentage': float(enrollment.progress_percentage),
        'enrollment_date': enrollment.enrollment_date.isoformat() if enrollment.enrollment_date else None,
        'completion_date': enrollment.completion_date.isoformat() if enrollment.completion_date else None,
        'modules': [
            {
                'module_id': mp.module_id,
                'module_title': mp.module.title,
                'status': mp.status,
                'started_at': mp.started_at.isoformat() if mp.started_at else None,
                'completed_at': mp.completed_at.isoformat() if mp.completed_at else None
            }
            for mp in module_progress_list
        ]
    }
    
    return jsonify(progress_data)


@enrollment_bp.route('/my-courses')
@login_required
def my_courses():
    """View all enrolled courses"""
    enrollments = Enrollment.query.filter_by(
        student_id=current_user.user_id
    ).order_by(Enrollment.enrollment_date.desc()).all()
    
    # Separate by status
    active_enrollments = [e for e in enrollments if e.status == 'active']
    completed_enrollments = [e for e in enrollments if e.status == 'completed']
    dropped_enrollments = [e for e in enrollments if e.status == 'dropped']
    
    return jsonify({
        'active': [e.to_dict() for e in active_enrollments],
        'completed': [e.to_dict() for e in completed_enrollments],
        'dropped': [e.to_dict() for e in dropped_enrollments]
    })