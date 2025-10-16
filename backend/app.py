from flask import Flask, render_template, redirect, url_for
from flask_login import LoginManager, current_user
from .config import config
from backend.models import db, User
from datetime import datetime
import os

def create_app(config_name='development'):
    """Application factory pattern"""
    app = Flask(__name__, 
                template_folder='../frontend/templates',
                static_folder='../frontend/static')
   
    # Load configuration
    app.config.from_object(config[config_name])

    # Set SECRET_KEY from environment variable
    import os
    app.config['SECRET_KEY'] = os.environ.get('SECRET_KEY')
    
    # Initialize extensions
    db.init_app(app)
    
    # Initialize Flask-Login
    login_manager = LoginManager()
    login_manager.init_app(app)
    login_manager.login_view = 'auth.login'
    login_manager.login_message = 'Please log in to access this page.'
    login_manager.login_message_category = 'info'
    
    @login_manager.user_loader
    def load_user(user_id):
        """Load user by ID for Flask-Login"""
        return User.query.get(int(user_id))
    
    # Register blueprints
    from backend.routes.auth_routes import auth_bp
    from backend.routes.course_routes import course_bp
    from backend.routes.quiz_routes import quiz_bp
    from backend.routes.enrollment_routes import enrollment_bp
    from backend.routes.progress_routes import progress_bp
    
    app.register_blueprint(auth_bp, url_prefix='/auth')
    app.register_blueprint(course_bp, url_prefix='/courses')
    app.register_blueprint(quiz_bp, url_prefix='/quiz')
    app.register_blueprint(enrollment_bp, url_prefix='/enrollment')
    app.register_blueprint(progress_bp, url_prefix='/progress')
    
    # Home route - redirects based on authentication
    @app.route('/')
    def index():
        """Landing page - redirect to login or dashboard"""
        if current_user.is_authenticated:
            # Redirect based on user role
            if current_user.role == 'student':
                return redirect(url_for('course.student_dashboard'))
            elif current_user.role == 'instructor':
                return redirect(url_for('course.instructor_dashboard'))
            else:
                return redirect(url_for('course.browse_courses'))
        return render_template('index.html')
    
    # Error handlers
    @app.errorhandler(404)
    def not_found_error(error):
        return render_template('errors/404.html'), 404
    
    @app.errorhandler(500)
    def internal_error(error):
        db.session.rollback()
        return render_template('errors/500.html'), 500
    
    @app.errorhandler(403)
    def forbidden_error(error):
        return render_template('errors/403.html'), 403
    
    # Context processor - makes variables available to all templates
    @app.context_processor
    def inject_now():
        return {'now': datetime.utcnow()}
    
    # Prevent caching in development
    @app.after_request
    def add_header(response):
        """Prevent caching in development"""
        if app.debug:
            response.headers['Cache-Control'] = 'no-store, no-cache, must-revalidate, post-check=0, pre-check=0, max-age=0'
            response.headers['Pragma'] = 'no-cache'
            response.headers['Expires'] = '-1'
        return response
    
    return app

if __name__ == '__main__':
    app = create_app()
    app.run()