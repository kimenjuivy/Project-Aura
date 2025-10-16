from flask import Blueprint, render_template, request, redirect, url_for, flash, jsonify
from flask_login import login_required, current_user
from backend.models import db, Course, Module, Resource, Enrollment, User
from backend.utils.auth_helpers import login_required_role
from sqlalchemy import func

course_bp = Blueprint('course', __name__)


@course_bp.route('/browse')
def browse_courses():
    """Browse all available courses (public access)"""
    # Get filter parameters
    category = request.args.get('category', 'all')
    difficulty = request.args.get('difficulty', 'all')
    search = request.args.get('search', '')
    
    # Base query
    query = Course.query.filter_by(is_published=True)
    
    # Apply filters
    if category != 'all':
        query = query.filter_by(category=category)
    
    if difficulty != 'all':
        query = query.filter_by(difficulty_level=difficulty)
    
    if search:
        query = query.filter(
            (Course.title.contains(search)) | 
            (Course.description.contains(search))
        )
    
    courses = query.order_by(Course.created_at.desc()).all()
    
    # Get all unique categories for filter
    categories = db.session.query(Course.category).distinct().all()
    categories = [cat[0] for cat in categories]
    
    return render_template('courses/list.html', 
                         courses=courses, 
                         categories=categories,
                         current_category=category,
                         current_difficulty=difficulty,
                         search_term=search)


@course_bp.route('/<int:course_id>')
def course_detail(course_id):
    """View detailed course information"""
    course = Course.query.get_or_404(course_id)
    
    # Check if user is enrolled (if logged in)
    is_enrolled = False
    enrollment = None
    if current_user.is_authenticated:
        enrollment = Enrollment.query.filter_by(
            student_id=current_user.user_id,
            course_id=course_id
        ).first()
        is_enrolled = enrollment is not None
    
    # Get course modules
    modules = Module.query.filter_by(
        course_id=course_id,
        is_published=True
    ).order_by(Module.order_index).all()
    
    # Get instructor info
    instructor = User.query.get(course.instructor_id)
    
    # Count total resources and quizzes
    total_resources = sum(module.resources.count() for module in modules)
    total_quizzes = sum(module.quizzes.count() for module in modules)
    
    return render_template('courses/detail.html',
                         course=course,
                         modules=modules,
                         instructor=instructor,
                         is_enrolled=is_enrolled,
                         enrollment=enrollment,
                         total_resources=total_resources,
                         total_quizzes=total_quizzes)


@course_bp.route('/dashboard/student')
@login_required
@login_required_role('student')
def student_dashboard():
    """Student dashboard - show enrolled courses and progress"""
    # Get all enrollments for current student
    enrollments = Enrollment.query.filter_by(
        student_id=current_user.user_id
    ).order_by(Enrollment.enrollment_date.desc()).all()
    
    # Get recommended courses (not enrolled)
    enrolled_course_ids = [e.course_id for e in enrollments]
    recommended_courses = Course.query.filter(
        Course.is_published == True,
        ~Course.course_id.in_(enrolled_course_ids) if enrolled_course_ids else True
    ).limit(6).all()
    
    # Calculate statistics
    active_courses = sum(1 for e in enrollments if e.status == 'active')
    completed_courses = sum(1 for e in enrollments if e.status == 'completed')
    
    return render_template('dashboard/student.html',
                         enrollments=enrollments,
                         recommended_courses=recommended_courses,
                         active_courses=active_courses,
                         completed_courses=completed_courses)


@course_bp.route('/dashboard/instructor')
@login_required
@login_required_role('instructor')
def instructor_dashboard():
    """Instructor dashboard - show courses they teach"""
    # Get courses taught by this instructor
    courses = Course.query.filter_by(
        instructor_id=current_user.user_id
    ).order_by(Course.created_at.desc()).all()
    
    # Calculate statistics for each course
    course_stats = []
    for course in courses:
        enrollment_count = Enrollment.query.filter_by(course_id=course.course_id).count()
        active_students = Enrollment.query.filter_by(
            course_id=course.course_id,
            status='active'
        ).count()
        completed_students = Enrollment.query.filter_by(
            course_id=course.course_id,
            status='completed'
        ).count()
        
        course_stats.append({
            'course': course,
            'total_enrollments': enrollment_count,
            'active_students': active_students,
            'completed_students': completed_students
        })
    
    return render_template('dashboard/instructor.html',
                         course_stats=course_stats)


@course_bp.route('/admin/dashboard')
@login_required
@login_required_role('admin')
def admin_dashboard():
    """Admin dashboard - platform overview"""
    # Get platform statistics
    total_users = User.query.count()
    total_students = User.query.filter_by(role='student').count()
    total_instructors = User.query.filter_by(role='instructor').count()
    total_courses = Course.query.count()
    total_enrollments = Enrollment.query.count()
    
    # Get recent activity
    recent_enrollments = Enrollment.query.order_by(
        Enrollment.enrollment_date.desc()
    ).limit(10).all()
    
    recent_users = User.query.order_by(
        User.created_at.desc()
    ).limit(10).all()
    
    return render_template('dashboard/admin.html',
                         total_users=total_users,
                         total_students=total_students,
                         total_instructors=total_instructors,
                         total_courses=total_courses,
                         total_enrollments=total_enrollments,
                         recent_enrollments=recent_enrollments,
                         recent_users=recent_users)


@course_bp.route('/<int:course_id>/module/<int:module_id>')
@login_required
def view_module(course_id, module_id):
    """View a specific module (requires enrollment)"""
    # Check enrollment
    enrollment = Enrollment.query.filter_by(
        student_id=current_user.user_id,
        course_id=course_id
    ).first()
    
    if not enrollment:
        flash('You must be enrolled in this course to view modules.', 'warning')
        return redirect(url_for('course.course_detail', course_id=course_id))
    
    # Get module
    module = Module.query.filter_by(
        module_id=module_id,
        course_id=course_id
    ).first_or_404()
    
    # Get all course modules for navigation
    all_modules = Module.query.filter_by(
        course_id=course_id,
        is_published=True
    ).order_by(Module.order_index).all()
    
    # Get resources for this module
    resources = Resource.query.filter_by(
        module_id=module_id
    ).order_by(Resource.order_index).all()
    
    # Get quizzes for this module
    from backend.models import Quiz
    quizzes = Quiz.query.filter_by(
        module_id=module_id,
        is_published=True
    ).all()
    
    # Get or create module progress
    from backend.models import ModuleProgress
    from datetime import datetime
    
    module_progress = ModuleProgress.query.filter_by(
        enrollment_id=enrollment.enrollment_id,
        module_id=module_id
    ).first()
    
    if not module_progress:
        # Create progress record
        module_progress = ModuleProgress(
            enrollment_id=enrollment.enrollment_id,
            module_id=module_id,
            status='in_progress',
            started_at=datetime.utcnow()
        )
        db.session.add(module_progress)
        db.session.commit()
    elif module_progress.status == 'not_started':
        # Update to in_progress
        module_progress.status = 'in_progress'
        module_progress.started_at = datetime.utcnow()
        db.session.commit()
    
    # Find next and previous modules
    current_index = next((i for i, m in enumerate(all_modules) if m.module_id == module_id), None)
    next_module = all_modules[current_index + 1] if current_index is not None and current_index < len(all_modules) - 1 else None
    prev_module = all_modules[current_index - 1] if current_index is not None and current_index > 0 else None
    
    return render_template('courses/module.html',
                         course=enrollment.course,
                         module=module,
                         all_modules=all_modules,
                         resources=resources,
                         quizzes=quizzes,
                         enrollment=enrollment,
                         module_progress=module_progress,
                         next_module=next_module,
                         prev_module=prev_module)


@course_bp.route('/instructor/courses/create', methods=['GET', 'POST'])
@login_required
@login_required_role('instructor')
def create_course():
    """Instructor creates a new course"""
    if request.method == 'POST':
        course_code = request.form.get('course_code', '').strip().upper()
        title = request.form.get('title', '').strip()
        description = request.form.get('description', '').strip()
        category = request.form.get('category', '').strip()
        difficulty_level = request.form.get('difficulty_level', 'beginner')
        duration_weeks = request.form.get('duration_weeks', 8, type=int)
        
        # Validate
        errors = []
        
        if len(course_code) < 3:
            errors.append('Course code must be at least 3 characters.')
        
        if Course.query.filter_by(course_code=course_code).first():
            errors.append('Course code already exists.')
        
        if len(title) < 5:
            errors.append('Title must be at least 5 characters.')
        
        if len(description) < 20:
            errors.append('Description must be at least 20 characters.')
        
        if errors:
            for error in errors:
                flash(error, 'danger')
            return render_template('courses/create.html')
        
        try:
            new_course = Course(
                course_code=course_code,
                title=title,
                description=description,
                instructor_id=current_user.user_id,
                category=category,
                difficulty_level=difficulty_level,
                duration_weeks=duration_weeks,
                is_published=False  # Draft by default
            )
            db.session.add(new_course)
            db.session.commit()
            
            flash(f'Course "{title}" created successfully!', 'success')
            return redirect(url_for('course.instructor_dashboard'))
        
        except Exception as e:
            db.session.rollback()
            flash('An error occurred while creating the course.', 'danger')
            print(f"Course creation error: {str(e)}")
    
    return render_template('courses/create.html')


@course_bp.route('/api/courses/<int:course_id>/stats')
@login_required
def get_course_stats(course_id):
    """API endpoint to get course statistics (for instructors)"""
    course = Course.query.get_or_404(course_id)
    
    # Check if user is the instructor
    if current_user.user_id != course.instructor_id and current_user.role != 'admin':
        return jsonify({'error': 'Unauthorized'}), 403
    
    # Get statistics
    total_enrollments = Enrollment.query.filter_by(course_id=course_id).count()
    active_enrollments = Enrollment.query.filter_by(course_id=course_id, status='active').count()
    completed_enrollments = Enrollment.query.filter_by(course_id=course_id, status='completed').count()
    
    # Average progress
    avg_progress = db.session.query(func.avg(Enrollment.progress_percentage)).filter_by(
        course_id=course_id,
        status='active'
    ).scalar() or 0
    
    return jsonify({
        'course_id': course_id,
        'total_enrollments': total_enrollments,
        'active_enrollments': active_enrollments,
        'completed_enrollments': completed_enrollments,
        'average_progress': float(avg_progress)
    })