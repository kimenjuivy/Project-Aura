from flask import Blueprint, render_template, request, redirect, url_for, flash
from flask_login import login_user, logout_user, login_required, current_user
from backend.models import db, User
from backend.utils.auth_helpers import (
    hash_password, 
    verify_password, 
    validate_email, 
    validate_password_strength,
    validate_username
)
from datetime import datetime

auth_bp = Blueprint('auth', __name__)


@auth_bp.route('/register', methods=['GET', 'POST'])
def register():
    """User registration"""
    # If already logged in, redirect to appropriate dashboard
    if current_user.is_authenticated:
        if current_user.role == 'student':
            return redirect(url_for('course.student_dashboard'))
        elif current_user.role == 'instructor':
            return redirect(url_for('course.instructor_dashboard'))
    
    if request.method == 'POST':
        # Get form data
        username = request.form.get('username', '').strip()
        email = request.form.get('email', '').strip().lower()
        full_name = request.form.get('full_name', '').strip()
        password = request.form.get('password', '')
        confirm_password = request.form.get('confirm_password', '')
        role = request.form.get('role', 'student')
        
        # Validate inputs
        errors = []
        
        # Validate username
        username_valid, username_msg = validate_username(username)
        if not username_valid:
            errors.append(username_msg)
        
        # Check if username already exists
        if User.query.filter_by(username=username).first():
            errors.append('Username already exists. Please choose another.')
        
        # Validate email
        if not validate_email(email):
            errors.append('Invalid email format.')
        
        # Check if email already exists
        if User.query.filter_by(email=email).first():
            errors.append('Email already registered. Please use another or log in.')
        
        # Validate full name
        if len(full_name) < 3:
            errors.append('Full name must be at least 3 characters long.')
        
        # Validate password
        password_valid, password_msg = validate_password_strength(password)
        if not password_valid:
            errors.append(password_msg)
        
        # Check password confirmation
        if password != confirm_password:
            errors.append('Passwords do not match.')
        
        # Validate role
        if role not in ['student', 'instructor']:
            role = 'student'  # Default to student if invalid
        
        # If there are errors, show them and return to form
        if errors:
            for error in errors:
                flash(error, 'danger')
            return render_template('auth/register.html')
        
        try:
            # Create new user
            new_user = User(
                username=username,
                email=email,
                full_name=full_name,
                role=role
            )
            new_user.set_password(password)
            
            # Add to database
            db.session.add(new_user)
            db.session.commit()
            
            flash(f'Account created successfully! Welcome, {full_name}!', 'success')
            
            # Log the user in automatically
            login_user(new_user)
            new_user.last_login = datetime.utcnow()
            db.session.commit()
            
            # Redirect based on role
            if role == 'student':
                return redirect(url_for('course.student_dashboard'))
            elif role == 'instructor':
                return redirect(url_for('course.instructor_dashboard'))
            
        except Exception as e:
            db.session.rollback()
            flash(f'An error occurred during registration. Please try again.', 'danger')
            print(f"Registration error: {str(e)}")  # For debugging
            return render_template('auth/register.html')
    
    return render_template('auth/register.html')


@auth_bp.route('/login', methods=['GET', 'POST'])
def login():
    """User login"""
    # If already logged in, redirect to appropriate dashboard
    if current_user.is_authenticated:
        if current_user.role == 'student':
            return redirect(url_for('course.student_dashboard'))
        elif current_user.role == 'instructor':
            return redirect(url_for('course.instructor_dashboard'))
    
    if request.method == 'POST':
        # Get form data
        username_or_email = request.form.get('username_or_email', '').strip().lower()
        password = request.form.get('password', '')
        remember_me = request.form.get('remember_me') == 'on'
        
        # Validate inputs
        if not username_or_email or not password:
            flash('Please provide both username/email and password.', 'danger')
            return render_template('auth/login.html')
        
        # Find user by username or email
        user = User.query.filter(
            (User.username == username_or_email) | (User.email == username_or_email)
        ).first()
        
        # Check if user exists and password is correct
        if user and user.check_password(password):
            # Check if account is active
            if not user.is_active:
                flash('Your account has been deactivated. Please contact support.', 'danger')
                return render_template('auth/login.html')
            
            # Log the user in
            login_user(user, remember=remember_me)
            
            # Update last login time
            user.last_login = datetime.utcnow()
            db.session.commit()
            
            flash(f'Welcome back, {user.full_name}!', 'success')
            
            # Redirect to the page they were trying to access, or dashboard
            next_page = request.args.get('next')
            if next_page:
                return redirect(next_page)
            
            # Redirect based on role
            if user.role == 'student':
                return redirect(url_for('course.student_dashboard'))
            elif user.role == 'instructor':
                return redirect(url_for('course.instructor_dashboard'))
            elif user.role == 'admin':
                return redirect(url_for('course.admin_dashboard'))
        else:
            flash('Invalid username/email or password. Please try again.', 'danger')
    
    return render_template('auth/login.html')


@auth_bp.route('/logout')
@login_required
def logout():
    """User logout"""
    user_name = current_user.full_name
    logout_user()
    flash(f'Goodbye, {user_name}! You have been logged out.', 'info')
    return redirect(url_for('index'))


@auth_bp.route('/profile')
@login_required
def profile():
    """User profile page"""
    return render_template('auth/profile.html', user=current_user)


@auth_bp.route('/profile/edit', methods=['GET', 'POST'])
@login_required
def edit_profile():
    """Edit user profile"""
    if request.method == 'POST':
        full_name = request.form.get('full_name', '').strip()
        bio = request.form.get('bio', '').strip()
        
        # Validate
        if len(full_name) < 3:
            flash('Full name must be at least 3 characters long.', 'danger')
            return render_template('auth/edit_profile.html', user=current_user)
        
        try:
            current_user.full_name = full_name
            current_user.bio = bio
            db.session.commit()
            flash('Profile updated successfully!', 'success')
            return redirect(url_for('auth.profile'))
        except Exception as e:
            db.session.rollback()
            flash('An error occurred while updating profile.', 'danger')
            print(f"Profile update error: {str(e)}")
    
    return render_template('auth/edit_profile.html', user=current_user)