"""
Input validation utilities for forms and API requests
"""
import re
from backend.models import User, Course


def validate_registration_data(username, email, full_name, password, confirm_password, role='student'):
    """
    Validate user registration data
    
    Returns:
        tuple: (is_valid, errors_list)
    """
    errors = []
    
    # Username validation
    if not username or len(username) < 3:
        errors.append('Username must be at least 3 characters long')
    elif len(username) > 50:
        errors.append('Username must not exceed 50 characters')
    elif not re.match(r'^[a-zA-Z0-9_]+$', username):
        errors.append('Username can only contain letters, numbers, and underscores')
    elif User.query.filter_by(username=username).first():
        errors.append('Username already exists')
    
    # Email validation
    if not email:
        errors.append('Email is required')
    elif not re.match(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$', email):
        errors.append('Invalid email format')
    elif User.query.filter_by(email=email).first():
        errors.append('Email already registered')
    
    # Full name validation
    if not full_name or len(full_name) < 3:
        errors.append('Full name must be at least 3 characters long')
    elif len(full_name) > 100:
        errors.append('Full name must not exceed 100 characters')
    
    # Password validation
    if not password:
        errors.append('Password is required')
    elif len(password) < 8:
        errors.append('Password must be at least 8 characters long')
    elif not any(c.isupper() for c in password):
        errors.append('Password must contain at least one uppercase letter')
    elif not any(c.islower() for c in password):
        errors.append('Password must contain at least one lowercase letter')
    elif not any(c.isdigit() for c in password):
        errors.append('Password must contain at least one digit')
    
    # Confirm password
    if password != confirm_password:
        errors.append('Passwords do not match')
    
    # Role validation
    if role not in ['student', 'instructor', 'admin']:
        errors.append('Invalid role')
    
    return len(errors) == 0, errors


def validate_course_data(course_code, title, description, category, difficulty_level='beginner', duration_weeks=8):
    """
    Validate course creation/update data
    
    Returns:
        tuple: (is_valid, errors_list)
    """
    errors = []
    
    # Course code validation
    if not course_code or len(course_code) < 3:
        errors.append('Course code must be at least 3 characters long')
    elif len(course_code) > 20:
        errors.append('Course code must not exceed 20 characters')
    elif not re.match(r'^[A-Z0-9]+$', course_code):
        errors.append('Course code must contain only uppercase letters and numbers')
    
    # Title validation
    if not title or len(title) < 5:
        errors.append('Course title must be at least 5 characters long')
    elif len(title) > 200:
        errors.append('Course title must not exceed 200 characters')
    
    # Description validation
    if not description or len(description) < 20:
        errors.append('Course description must be at least 20 characters long')
    
    # Category validation
    if not category or len(category) < 3:
        errors.append('Course category is required')
    
    # Difficulty validation
    if difficulty_level not in ['beginner', 'intermediate', 'advanced']:
        errors.append('Invalid difficulty level')
    
    # Duration validation
    try:
        duration = int(duration_weeks)
        if duration < 1 or duration > 52:
            errors.append('Duration must be between 1 and 52 weeks')
    except (ValueError, TypeError):
        errors.append('Invalid duration value')
    
    return len(errors) == 0, errors


def validate_module_data(module_number, title, description='', order_index=1):
    """
    Validate module creation/update data
    
    Returns:
        tuple: (is_valid, errors_list)
    """
    errors = []
    
    # Module number validation
    try:
        mod_num = int(module_number)
        if mod_num < 1:
            errors.append('Module number must be positive')
    except (ValueError, TypeError):
        errors.append('Invalid module number')
    
    # Title validation
    if not title or len(title) < 5:
        errors.append('Module title must be at least 5 characters long')
    elif len(title) > 200:
        errors.append('Module title must not exceed 200 characters')
    
    # Order index validation
    try:
        order = int(order_index)
        if order < 1:
            errors.append('Order index must be positive')
    except (ValueError, TypeError):
        errors.append('Invalid order index')
    
    return len(errors) == 0, errors


def validate_quiz_data(title, description='', duration_minutes=30, passing_score=70, max_attempts=3):
    """
    Validate quiz creation/update data
    
    Returns:
        tuple: (is_valid, errors_list)
    """
    errors = []
    
    # Title validation
    if not title or len(title) < 5:
        errors.append('Quiz title must be at least 5 characters long')
    elif len(title) > 200:
        errors.append('Quiz title must not exceed 200 characters')
    
    # Duration validation
    try:
        duration = int(duration_minutes)
        if duration < 1 or duration > 180:
            errors.append('Duration must be between 1 and 180 minutes')
    except (ValueError, TypeError):
        errors.append('Invalid duration value')
    
    # Passing score validation
    try:
        score = float(passing_score)
        if score < 0 or score > 100:
            errors.append('Passing score must be between 0 and 100')
    except (ValueError, TypeError):
        errors.append('Invalid passing score')
    
    # Max attempts validation
    try:
        attempts = int(max_attempts)
        if attempts < 1 or attempts > 10:
            errors.append('Max attempts must be between 1 and 10')
    except (ValueError, TypeError):
        errors.append('Invalid max attempts value')
    
    return len(errors) == 0, errors


def sanitize_input(text, max_length=None):
    """
    Basic input sanitization - remove dangerous characters
    
    Args:
        text (str): Input text to sanitize
        max_length (int): Optional maximum length
    
    Returns:
        str: Sanitized text
    """
    if not text:
        return ''
    
    # Strip whitespace
    text = text.strip()
    
    # Remove null bytes
    text = text.replace('\x00', '')
    
    # Truncate if needed
    if max_length and len(text) > max_length:
        text = text[:max_length]
    
    return text


def validate_file_upload(filename, allowed_extensions={'pdf', 'png', 'jpg', 'jpeg', 'gif', 'mp4', 'mp3'}):
    """
    Validate uploaded file
    
    Returns:
        tuple: (is_valid, error_message)
    """
    if not filename:
        return False, 'No file selected'
    
    if '.' not in filename:
        return False, 'File must have an extension'
    
    extension = filename.rsplit('.', 1)[1].lower()
    
    if extension not in allowed_extensions:
        return False, f'File type .{extension} not allowed. Allowed types: {", ".join(allowed_extensions)}'
    
    return True, 'File is valid'