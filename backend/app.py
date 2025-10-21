from flask import Flask, render_template, redirect, url_for
from flask_login import LoginManager, current_user
# FIXED IMPORT - use absolute import
from config import config
from backend.models import db, User
from datetime import datetime
import os
import time

def create_app(config_name=None):
    """Application factory pattern"""
    # Automatically detect environment
    if config_name is None:
        # Check if running on Railway
        if os.environ.get('RAILWAY_ENVIRONMENT'):
            config_name = 'production'
        else:
            config_name = os.environ.get('FLASK_ENV', 'development')
    
    app = Flask(__name__, 
                template_folder='../frontend/templates',
                static_folder='../frontend/static')
   
    # Load configuration
    app.config.from_object(config[config_name])
    
    # Log which config is being used (helpful for debugging)
    print(f"Starting app with {config_name} configuration")
    
    # DEBUG: Print database connection info (hide password)
    print("=== Database Configuration ===")
    db_uri = app.config.get('SQLALCHEMY_DATABASE_URI', 'Not set')
    if '@' in db_uri:
        # Mask password in logs
        parts = db_uri.split('@')
        user_pass = parts[0].split('://')[-1]
        if ':' in user_pass:
            user = user_pass.split(':')[0]
            masked_uri = db_uri.replace(user_pass, f"{user}:****")
            print(f"Database URI: {masked_uri}")
        else:
            print(f"Database URI: {db_uri}")
    else:
        print(f"Database URI: {db_uri}")
    
    # Show which variables are set
    print(f"MYSQLHOST: {os.getenv('MYSQLHOST', 'Not set')}")
    print(f"MYSQL_URL exists: {bool(os.getenv('MYSQL_URL'))}")
    print("==============================")
    
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
    
    # Add debug route to check database connection
    @app.route('/debug-db')
    def debug_db():
        """Debug database configuration"""
        db_uri = app.config.get('SQLALCHEMY_DATABASE_URI', 'Not set')
        # Mask password for security
        if '@' in db_uri:
            parts = db_uri.split('@')
            user_pass = parts[0].split('://')[-1]
            if ':' in user_pass:
                user = user_pass.split(':')[0]
                masked_uri = db_uri.replace(user_pass, f"{user}:****")
            else:
                masked_uri = db_uri
        else:
            masked_uri = db_uri
        
        return {
            'database_uri': masked_uri,
            'mysql_url': os.getenv('MYSQL_URL'),
            'railway_environment': os.getenv('RAILWAY_ENVIRONMENT'),
            'config_used': config_name
        }
    
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
    
    # Health check endpoint for Railway
    @app.route('/health')
    def health():
        """Health check endpoint"""
        return {'status': 'healthy', 'config': config_name}, 200
    
    # Error handlers
    @app.errorhandler(404)
    def not_found_error(error):
        """Handle 404 errors"""
        try:
            return render_template('errors/404.html'), 404
        except:
            return '<h1>404 - Page Not Found</h1>', 404
    
    @app.errorhandler(500)
    def internal_error(error):
        """Handle 500 errors"""
        db.session.rollback()
        try:
            return render_template('errors/500.html'), 500
        except:
            return '<h1>500 - Internal Server Error</h1><p>Something went wrong. Please try again later.</p>', 500
    
    @app.errorhandler(403)
    def forbidden_error(error):
        """Handle 403 errors"""
        try:
            return render_template('errors/403.html'), 403
        except:
            return '<h1>403 - Forbidden</h1>', 403
    
    # Context processor - makes variables available to all templates
    @app.context_processor
    def inject_now():
        """Inject current time into templates"""
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
    
    # Database initialization with retry logic
    with app.app_context():
        max_retries = 5
        for attempt in range(max_retries):
            try:
                # Create tables if they don't exist
                db.create_all()
                print("✓ Database tables created successfully")
                break
            except Exception as e:
                if attempt < max_retries - 1:
                    wait_time = 2 ** attempt  # Exponential backoff: 1, 2, 4, 8, 16 seconds
                    print(f"✗ Database connection failed (attempt {attempt + 1}/{max_retries}): {e}")
                    print(f"  Retrying in {wait_time} seconds...")
                    time.sleep(wait_time)
                else:
                    print(f"✗ Failed to connect to database after {max_retries} attempts: {e}")
                    print("  App will start but database operations will fail.")
                    # Don't crash the app, let it start and show error on first request
    
    return app

if __name__ == '__main__':
    app = create_app()
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)