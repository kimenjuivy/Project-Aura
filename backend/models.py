from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin
from datetime import datetime
from werkzeug.security import generate_password_hash, check_password_hash

db = SQLAlchemy()

# ============================================
# USER MODEL
# ============================================
class User(UserMixin, db.Model):
    __tablename__ = 'users'
    
    user_id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(50), unique=True, nullable=False)
    email = db.Column(db.String(100), unique=True, nullable=False)
    password_hash = db.Column(db.String(255), nullable=False)
    full_name = db.Column(db.String(100), nullable=False)
    role = db.Column(db.Enum('student', 'instructor', 'admin'), default='student')
    bio = db.Column(db.Text)
    profile_image = db.Column(db.String(255))
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    last_login = db.Column(db.DateTime)
    is_active = db.Column(db.Boolean, default=True)
    
    # Relationships
    taught_courses = db.relationship('Course', backref='instructor', lazy='dynamic', foreign_keys='Course.instructor_id')
    enrollments = db.relationship('Enrollment', backref='student', lazy='dynamic', cascade='all, delete-orphan')
    
    def get_id(self):
        """Override Flask-Login's get_id to use user_id instead of id"""
        return str(self.user_id)
    
    def set_password(self, password):
        """Hash and set password"""
        self.password_hash = generate_password_hash(password)
    
    def check_password(self, password):
        """Check if password matches hash"""
        return check_password_hash(self.password_hash, password)
    
    def to_dict(self):
        """Convert user to dictionary"""
        return {
            'user_id': self.user_id,
            'username': self.username,
            'email': self.email,
            'full_name': self.full_name,
            'role': self.role,
            'bio': self.bio,
            'profile_image': self.profile_image,
            'created_at': self.created_at.isoformat() if self.created_at else None,
            'is_active': self.is_active
        }
    
    def __repr__(self):
        return f'<User {self.username}>'


# ============================================
# COURSE MODEL
# ============================================
class Course(db.Model):
    __tablename__ = 'courses'
    
    course_id = db.Column(db.Integer, primary_key=True)
    course_code = db.Column(db.String(20), unique=True, nullable=False)
    title = db.Column(db.String(200), nullable=False)
    description = db.Column(db.Text, nullable=False)
    instructor_id = db.Column(db.Integer, db.ForeignKey('users.user_id', ondelete='CASCADE'), nullable=False)
    category = db.Column(db.String(50), nullable=False)
    difficulty_level = db.Column(db.Enum('beginner', 'intermediate', 'advanced'), default='beginner')
    duration_weeks = db.Column(db.Integer, default=8)
    thumbnail_url = db.Column(db.String(255))
    is_published = db.Column(db.Boolean, default=True)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
    
    # Relationships
    modules = db.relationship('Module', backref='course', lazy='dynamic', cascade='all, delete-orphan', order_by='Module.order_index')
    enrollments = db.relationship('Enrollment', backref='course', lazy='dynamic', cascade='all, delete-orphan')
    
    def to_dict(self, include_modules=False):
        """Convert course to dictionary"""
        data = {
            'course_id': self.course_id,
            'course_code': self.course_code,
            'title': self.title,
            'description': self.description,
            'instructor_id': self.instructor_id,
            'instructor_name': self.instructor.full_name if self.instructor else None,
            'category': self.category,
            'difficulty_level': self.difficulty_level,
            'duration_weeks': self.duration_weeks,
            'thumbnail_url': self.thumbnail_url,
            'is_published': self.is_published,
            'created_at': self.created_at.isoformat() if self.created_at else None
        }
        
        if include_modules:
            data['modules'] = [module.to_dict() for module in self.modules.all()]
        
        return data
    
    def __repr__(self):
        return f'<Course {self.course_code}: {self.title}>'


# ============================================
# MODULE MODEL
# ============================================
class Module(db.Model):
    __tablename__ = 'modules'
    
    module_id = db.Column(db.Integer, primary_key=True)
    course_id = db.Column(db.Integer, db.ForeignKey('courses.course_id', ondelete='CASCADE'), nullable=False)
    module_number = db.Column(db.Integer, nullable=False)
    title = db.Column(db.String(200), nullable=False)
    description = db.Column(db.Text)
    learning_objectives = db.Column(db.Text)
    order_index = db.Column(db.Integer, nullable=False)
    is_published = db.Column(db.Boolean, default=True)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    
    # Relationships
    resources = db.relationship('Resource', backref='module', lazy='dynamic', cascade='all, delete-orphan', order_by='Resource.order_index')
    quizzes = db.relationship('Quiz', backref='module', lazy='dynamic', cascade='all, delete-orphan')
    progress_records = db.relationship('ModuleProgress', backref='module', lazy='dynamic', cascade='all, delete-orphan')
    
    def to_dict(self, include_resources=False, include_quizzes=False):
        """Convert module to dictionary"""
        data = {
            'module_id': self.module_id,
            'course_id': self.course_id,
            'module_number': self.module_number,
            'title': self.title,
            'description': self.description,
            'learning_objectives': self.learning_objectives,
            'order_index': self.order_index,
            'is_published': self.is_published
        }
        
        if include_resources:
            data['resources'] = [resource.to_dict() for resource in self.resources.all()]
        
        if include_quizzes:
            data['quizzes'] = [quiz.to_dict() for quiz in self.quizzes.all()]
        
        return data
    
    def __repr__(self):
        return f'<Module {self.module_number}: {self.title}>'


# ============================================
# RESOURCE MODEL
# ============================================
class Resource(db.Model):
    __tablename__ = 'resources'
    
    resource_id = db.Column(db.Integer, primary_key=True)
    module_id = db.Column(db.Integer, db.ForeignKey('modules.module_id', ondelete='CASCADE'), nullable=False)
    resource_type = db.Column(db.Enum('video', 'pdf', 'article', 'link', 'slides'), nullable=False)
    title = db.Column(db.String(200), nullable=False)
    description = db.Column(db.Text)
    file_url = db.Column(db.String(500))
    duration_minutes = db.Column(db.Integer)
    order_index = db.Column(db.Integer, nullable=False)
    is_mandatory = db.Column(db.Boolean, default=True)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    
    # Relationships
    completions = db.relationship('ResourceCompletion', backref='resource', lazy='dynamic', cascade='all, delete-orphan')
    
    def to_dict(self):
        """Convert resource to dictionary"""
        return {
            'resource_id': self.resource_id,
            'module_id': self.module_id,
            'resource_type': self.resource_type,
            'title': self.title,
            'description': self.description,
            'file_url': self.file_url,
            'duration_minutes': self.duration_minutes,
            'order_index': self.order_index,
            'is_mandatory': self.is_mandatory
        }
    
    def __repr__(self):
        return f'<Resource {self.title}>'


# ============================================
# QUIZ MODEL
# ============================================
class Quiz(db.Model):
    __tablename__ = 'quizzes'
    
    quiz_id = db.Column(db.Integer, primary_key=True)
    module_id = db.Column(db.Integer, db.ForeignKey('modules.module_id', ondelete='CASCADE'), nullable=False)
    title = db.Column(db.String(200), nullable=False)
    description = db.Column(db.Text)
    duration_minutes = db.Column(db.Integer, default=30)
    passing_score = db.Column(db.Numeric(5, 2), default=70.00)
    max_attempts = db.Column(db.Integer, default=3)
    is_published = db.Column(db.Boolean, default=True)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    
    # Relationships
    questions = db.relationship('Question', backref='quiz', lazy='dynamic', cascade='all, delete-orphan', order_by='Question.order_index')
    attempts = db.relationship('QuizAttempt', backref='quiz', lazy='dynamic', cascade='all, delete-orphan')
    
    def to_dict(self, include_questions=False):
        """Convert quiz to dictionary"""
        data = {
            'quiz_id': self.quiz_id,
            'module_id': self.module_id,
            'title': self.title,
            'description': self.description,
            'duration_minutes': self.duration_minutes,
            'passing_score': float(self.passing_score),
            'max_attempts': self.max_attempts,
            'is_published': self.is_published,
            'total_questions': self.questions.count()
        }
        
        if include_questions:
            data['questions'] = [question.to_dict(include_options=True) for question in self.questions.all()]
        
        return data
    
    def __repr__(self):
        return f'<Quiz {self.title}>'


# ============================================
# QUESTION MODEL
# ============================================
class Question(db.Model):
    __tablename__ = 'questions'
    
    question_id = db.Column(db.Integer, primary_key=True)
    quiz_id = db.Column(db.Integer, db.ForeignKey('quizzes.quiz_id', ondelete='CASCADE'), nullable=False)
    question_text = db.Column(db.Text, nullable=False)
    question_type = db.Column(db.Enum('multiple_choice', 'true_false', 'short_answer'), default='multiple_choice')
    points = db.Column(db.Numeric(5, 2), default=1.00)
    order_index = db.Column(db.Integer, nullable=False)
    explanation = db.Column(db.Text)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    
    # Relationships
    options = db.relationship('AnswerOption', backref='question', lazy='dynamic', cascade='all, delete-orphan', order_by='AnswerOption.order_index')
    student_answers = db.relationship('StudentAnswer', backref='question', lazy='dynamic', cascade='all, delete-orphan')
    
    def to_dict(self, include_options=True, show_correct=False):
        """Convert question to dictionary"""
        data = {
            'question_id': self.question_id,
            'quiz_id': self.quiz_id,
            'question_text': self.question_text,
            'question_type': self.question_type,
            'points': float(self.points),
            'order_index': self.order_index,
            'explanation': self.explanation if show_correct else None
        }
        
        if include_options:
            data['options'] = [option.to_dict(show_correct=show_correct) for option in self.options.all()]
        
        return data
    
    def __repr__(self):
        return f'<Question {self.question_id}>'


# ============================================
# ANSWER OPTION MODEL
# ============================================
class AnswerOption(db.Model):
    __tablename__ = 'answer_options'
    
    option_id = db.Column(db.Integer, primary_key=True)
    question_id = db.Column(db.Integer, db.ForeignKey('questions.question_id', ondelete='CASCADE'), nullable=False)
    option_text = db.Column(db.Text, nullable=False)
    is_correct = db.Column(db.Boolean, default=False)
    order_index = db.Column(db.Integer, nullable=False)
    
    def to_dict(self, show_correct=False):
        """Convert option to dictionary"""
        data = {
            'option_id': self.option_id,
            'question_id': self.question_id,
            'option_text': self.option_text,
            'order_index': self.order_index
        }
        
        if show_correct:
            data['is_correct'] = self.is_correct
        
        return data
    
    def __repr__(self):
        return f'<AnswerOption {self.option_id}>'


# ============================================
# ENROLLMENT MODEL
# ============================================
class Enrollment(db.Model):
    __tablename__ = 'enrollments'
    
    enrollment_id = db.Column(db.Integer, primary_key=True)
    student_id = db.Column(db.Integer, db.ForeignKey('users.user_id', ondelete='CASCADE'), nullable=False)
    course_id = db.Column(db.Integer, db.ForeignKey('courses.course_id', ondelete='CASCADE'), nullable=False)
    enrollment_date = db.Column(db.DateTime, default=datetime.utcnow)
    completion_date = db.Column(db.DateTime)
    status = db.Column(db.Enum('active', 'completed', 'dropped'), default='active')
    progress_percentage = db.Column(db.Numeric(5, 2), default=0.00)
    
    # Relationships
    module_progress = db.relationship('ModuleProgress', backref='enrollment', lazy='dynamic', cascade='all, delete-orphan')
    quiz_attempts = db.relationship('QuizAttempt', backref='enrollment', lazy='dynamic', cascade='all, delete-orphan')
    resource_completions = db.relationship('ResourceCompletion', backref='enrollment', lazy='dynamic', cascade='all, delete-orphan')
    
    def to_dict(self):
        """Convert enrollment to dictionary"""
        return {
            'enrollment_id': self.enrollment_id,
            'student_id': self.student_id,
            'course_id': self.course_id,
            'course_title': self.course.title if self.course else None,
            'enrollment_date': self.enrollment_date.isoformat() if self.enrollment_date else None,
            'completion_date': self.completion_date.isoformat() if self.completion_date else None,
            'status': self.status,
            'progress_percentage': float(self.progress_percentage)
        }
    
    def __repr__(self):
        return f'<Enrollment {self.enrollment_id}>'


# ============================================
# MODULE PROGRESS MODEL
# ============================================
class ModuleProgress(db.Model):
    __tablename__ = 'module_progress'
    
    progress_id = db.Column(db.Integer, primary_key=True)
    enrollment_id = db.Column(db.Integer, db.ForeignKey('enrollments.enrollment_id', ondelete='CASCADE'), nullable=False)
    module_id = db.Column(db.Integer, db.ForeignKey('modules.module_id', ondelete='CASCADE'), nullable=False)
    status = db.Column(db.Enum('not_started', 'in_progress', 'completed'), default='not_started')
    started_at = db.Column(db.DateTime)
    completed_at = db.Column(db.DateTime)
    
    def to_dict(self):
        """Convert module progress to dictionary"""
        return {
            'progress_id': self.progress_id,
            'enrollment_id': self.enrollment_id,
            'module_id': self.module_id,
            'status': self.status,
            'started_at': self.started_at.isoformat() if self.started_at else None,
            'completed_at': self.completed_at.isoformat() if self.completed_at else None
        }
    
    def __repr__(self):
        return f'<ModuleProgress {self.progress_id}>'


# ============================================
# QUIZ ATTEMPT MODEL
# ============================================
class QuizAttempt(db.Model):
    __tablename__ = 'quiz_attempts'
    
    attempt_id = db.Column(db.Integer, primary_key=True)
    enrollment_id = db.Column(db.Integer, db.ForeignKey('enrollments.enrollment_id', ondelete='CASCADE'), nullable=False)
    quiz_id = db.Column(db.Integer, db.ForeignKey('quizzes.quiz_id', ondelete='CASCADE'), nullable=False)
    attempt_number = db.Column(db.Integer, nullable=False)
    score = db.Column(db.Numeric(5, 2))
    total_points = db.Column(db.Numeric(5, 2))
    percentage = db.Column(db.Numeric(5, 2))
    started_at = db.Column(db.DateTime, default=datetime.utcnow)
    submitted_at = db.Column(db.DateTime)
    time_taken_minutes = db.Column(db.Integer)
    passed = db.Column(db.Boolean, default=False)
    
    # Relationships
    student_answers = db.relationship('StudentAnswer', backref='attempt', lazy='dynamic', cascade='all, delete-orphan')
    
    def to_dict(self):
        """Convert quiz attempt to dictionary"""
        return {
            'attempt_id': self.attempt_id,
            'enrollment_id': self.enrollment_id,
            'quiz_id': self.quiz_id,
            'attempt_number': self.attempt_number,
            'score': float(self.score) if self.score else None,
            'total_points': float(self.total_points) if self.total_points else None,
            'percentage': float(self.percentage) if self.percentage else None,
            'started_at': self.started_at.isoformat() if self.started_at else None,
            'submitted_at': self.submitted_at.isoformat() if self.submitted_at else None,
            'time_taken_minutes': self.time_taken_minutes,
            'passed': self.passed
        }
    
    def __repr__(self):
        return f'<QuizAttempt {self.attempt_id}>'


# ============================================
# STUDENT ANSWER MODEL
# ============================================
class StudentAnswer(db.Model):
    __tablename__ = 'student_answers'
    
    answer_id = db.Column(db.Integer, primary_key=True)
    attempt_id = db.Column(db.Integer, db.ForeignKey('quiz_attempts.attempt_id', ondelete='CASCADE'), nullable=False)
    question_id = db.Column(db.Integer, db.ForeignKey('questions.question_id', ondelete='CASCADE'), nullable=False)
    selected_option_id = db.Column(db.Integer, db.ForeignKey('answer_options.option_id', ondelete='SET NULL'))
    answer_text = db.Column(db.Text)
    is_correct = db.Column(db.Boolean)
    points_earned = db.Column(db.Numeric(5, 2), default=0.00)
    answered_at = db.Column(db.DateTime, default=datetime.utcnow)
    
    # Relationship
    selected_option = db.relationship('AnswerOption', foreign_keys=[selected_option_id])
    
    def to_dict(self):
        """Convert student answer to dictionary"""
        return {
            'answer_id': self.answer_id,
            'attempt_id': self.attempt_id,
            'question_id': self.question_id,
            'selected_option_id': self.selected_option_id,
            'answer_text': self.answer_text,
            'is_correct': self.is_correct,
            'points_earned': float(self.points_earned),
            'answered_at': self.answered_at.isoformat() if self.answered_at else None
        }
    
    def __repr__(self):
        return f'<StudentAnswer {self.answer_id}>'


# ============================================
# RESOURCE COMPLETION MODEL
# ============================================
class ResourceCompletion(db.Model):
    __tablename__ = 'resource_completions'
    
    completion_id = db.Column(db.Integer, primary_key=True)
    enrollment_id = db.Column(db.Integer, db.ForeignKey('enrollments.enrollment_id', ondelete='CASCADE'), nullable=False)
    resource_id = db.Column(db.Integer, db.ForeignKey('resources.resource_id', ondelete='CASCADE'), nullable=False)
    completed_at = db.Column(db.DateTime, default=datetime.utcnow)
    time_spent_minutes = db.Column(db.Integer)
    
    def to_dict(self):
        """Convert resource completion to dictionary"""
        return {
            'completion_id': self.completion_id,
            'enrollment_id': self.enrollment_id,
            'resource_id': self.resource_id,
            'completed_at': self.completed_at.isoformat() if self.completed_at else None,
            'time_spent_minutes': self.time_spent_minutes
        }
    
    def __repr__(self):
        return f'<ResourceCompletion {self.completion_id}>'
    
    # Add these models to your existing models.py file

# ============================================
# CHAT SESSION MODEL (for AI Tutor)
# ============================================
class ChatSession(db.Model):
    __tablename__ = 'chat_sessions'
    
    session_id = db.Column(db.Integer, primary_key=True)
    student_id = db.Column(db.Integer, db.ForeignKey('users.user_id', ondelete='CASCADE'), nullable=False)
    course_id = db.Column(db.Integer, db.ForeignKey('courses.course_id', ondelete='CASCADE'))
    module_id = db.Column(db.Integer, db.ForeignKey('modules.module_id', ondelete='CASCADE'))
    quiz_id = db.Column(db.Integer, db.ForeignKey('quizzes.quiz_id', ondelete='CASCADE'))
    context_type = db.Column(db.Enum('general', 'course', 'module', 'quiz'), default='general')
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    last_activity = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
    is_active = db.Column(db.Boolean, default=True)
    
    # Relationships
    messages = db.relationship('ChatMessage', backref='session', lazy='dynamic', cascade='all, delete-orphan', order_by='ChatMessage.created_at')
    student = db.relationship('User', foreign_keys=[student_id])
    course = db.relationship('Course', foreign_keys=[course_id])
    module = db.relationship('Module', foreign_keys=[module_id])
    quiz = db.relationship('Quiz', foreign_keys=[quiz_id])
    
    def to_dict(self, include_messages=False):
        """Convert chat session to dictionary"""
        data = {
            'session_id': self.session_id,
            'student_id': self.student_id,
            'course_id': self.course_id,
            'module_id': self.module_id,
            'quiz_id': self.quiz_id,
            'context_type': self.context_type,
            'created_at': self.created_at.isoformat() if self.created_at else None,
            'last_activity': self.last_activity.isoformat() if self.last_activity else None,
            'is_active': self.is_active,
            'message_count': self.messages.count()
        }
        
        if include_messages:
            data['messages'] = [msg.to_dict() for msg in self.messages.all()]
        
        return data
    
    def __repr__(self):
        return f'<ChatSession {self.session_id}>'


# ============================================
# CHAT MESSAGE MODEL
# ============================================
class ChatMessage(db.Model):
    __tablename__ = 'chat_messages'
    
    message_id = db.Column(db.Integer, primary_key=True)
    session_id = db.Column(db.Integer, db.ForeignKey('chat_sessions.session_id', ondelete='CASCADE'), nullable=False)
    role = db.Column(db.Enum('user', 'assistant', 'system'), nullable=False)
    content = db.Column(db.Text, nullable=False)
    ai_model = db.Column(db.String(50))  # e.g., 'claude-3', 'gpt-4', 'gemini-pro'
    tokens_used = db.Column(db.Integer)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    extra_metadata = db.Column("metadata", db.JSON)  # column stays "metadata", Python uses extra_metadata  # Store additional context, citations, etc.
    
    def to_dict(self):
        """Convert chat message to dictionary"""
        return {
            'message_id': self.message_id,
            'session_id': self.session_id,
            'role': self.role,
            'content': self.content,
            'ai_model': self.ai_model,
            'tokens_used': self.tokens_used,
            'created_at': self.created_at.isoformat() if self.created_at else None,
            'metadata': self.meta
        }
    
    def __repr__(self):
        return f'<ChatMessage {self.message_id}>'


# ============================================
# AI STUDY RECOMMENDATION MODEL
# ============================================
class StudyRecommendation(db.Model):
    __tablename__ = 'study_recommendations'
    
    recommendation_id = db.Column(db.Integer, primary_key=True)
    student_id = db.Column(db.Integer, db.ForeignKey('users.user_id', ondelete='CASCADE'), nullable=False)
    course_id = db.Column(db.Integer, db.ForeignKey('courses.course_id', ondelete='CASCADE'), nullable=False)
    recommendation_type = db.Column(db.Enum('review', 'practice', 'resource', 'concept'), nullable=False)
    title = db.Column(db.String(200), nullable=False)
    description = db.Column(db.Text, nullable=False)
    priority = db.Column(db.Enum('low', 'medium', 'high'), default='medium')
    resource_id = db.Column(db.Integer, db.ForeignKey('resources.resource_id', ondelete='CASCADE'))
    module_id = db.Column(db.Integer, db.ForeignKey('modules.module_id', ondelete='CASCADE'))
    quiz_id = db.Column(db.Integer, db.ForeignKey('quizzes.quiz_id', ondelete='CASCADE'))
    is_completed = db.Column(db.Boolean, default=False)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    completed_at = db.Column(db.DateTime)
    ai_reasoning = db.Column(db.Text)  # Why this was recommended
    
    # Relationships
    student = db.relationship('User', foreign_keys=[student_id])
    course = db.relationship('Course', foreign_keys=[course_id])
    resource = db.relationship('Resource', foreign_keys=[resource_id])
    module = db.relationship('Module', foreign_keys=[module_id])
    quiz = db.relationship('Quiz', foreign_keys=[quiz_id])
    
    def to_dict(self):
        """Convert recommendation to dictionary"""
        return {
            'recommendation_id': self.recommendation_id,
            'student_id': self.student_id,
            'course_id': self.course_id,
            'recommendation_type': self.recommendation_type,
            'title': self.title,
            'description': self.description,
            'priority': self.priority,
            'resource_id': self.resource_id,
            'module_id': self.module_id,
            'quiz_id': self.quiz_id,
            'is_completed': self.is_completed,
            'created_at': self.created_at.isoformat() if self.created_at else None,
            'completed_at': self.completed_at.isoformat() if self.completed_at else None,
            'ai_reasoning': self.ai_reasoning
        }
    
    def __repr__(self):
        return f'<StudyRecommendation {self.recommendation_id}>'