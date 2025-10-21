import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

class Config:
    """Base configuration"""
    SECRET_KEY = os.getenv('SECRET_KEY', 'dev-secret-key-change-in-production')
    
    # Database Configuration - Support both Railway and local dev
    DB_HOST = os.getenv('MYSQLHOST') or os.getenv('DB_HOST', 'localhost')
    DB_USER = os.getenv('MYSQLUSER') or os.getenv('DB_USER', 'root')
    DB_PASSWORD = os.getenv('MYSQLPASSWORD') or os.getenv('DB_PASSWORD', '')
    DB_NAME = os.getenv('MYSQLDATABASE') or os.getenv('DB_NAME', 'elearning_db')
    DB_PORT = os.getenv('MYSQLPORT') or os.getenv('DB_PORT', '3306')
    
    # SQLAlchemy Configuration - SIMPLIFIED VERSION
    MYSQL_URL = os.getenv('MYSQL_URL')
    
    # Simplified database configuration
    if os.getenv('RAILWAY_ENVIRONMENT'):
        # Use Railway's MYSQL_URL for production
        if MYSQL_URL and MYSQL_URL.startswith('mysql://'):
            SQLALCHEMY_DATABASE_URI = MYSQL_URL.replace('mysql://', 'mysql+pymysql://', 1)
            print("Using Railway MYSQL_URL for database connection")
        else:
            # Fallback to component-based connection
            SQLALCHEMY_DATABASE_URI = f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
            print("Using component-based database connection")
    else:
        # Local development
        SQLALCHEMY_DATABASE_URI = f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
        print("Using local development database")
    
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_ECHO = False  # Set to True for SQL debugging
    
    # Connection pool settings for Railway
    SQLALCHEMY_ENGINE_OPTIONS = {
        'pool_pre_ping': True,      # Verify connections before using them
        'pool_recycle': 300,        # Recycle connections after 5 minutes
        'pool_size': 10,            # Maximum number of connections
        'max_overflow': 20,         # Maximum overflow connections
        'connect_args': {
            'connect_timeout': 10   # Connection timeout in seconds
        }
    }
    
    # Session Configuration
    PERMANENT_SESSION_LIFETIME = 3600  # 1 hour
    SESSION_COOKIE_SECURE = False  # Set to True in production with HTTPS
    SESSION_COOKIE_HTTPONLY = True
    SESSION_COOKIE_SAMESITE = 'Lax'
    
    # Flask Configuration
    DEBUG = os.getenv('FLASK_ENV') == 'development'
    TESTING = False
    
    # File Upload Configuration (for future use)
    MAX_CONTENT_LENGTH = 16 * 1024 * 1024  # 16MB max file size
    UPLOAD_FOLDER = 'uploads'
    ALLOWED_EXTENSIONS = {'pdf', 'png', 'jpg', 'jpeg', 'gif', 'mp4', 'mp3'}

class DevelopmentConfig(Config):
    """Development configuration"""
    DEBUG = True
    SQLALCHEMY_ECHO = True  # Show SQL queries in console

class ProductionConfig(Config):
    """Production configuration"""
    DEBUG = False
    SQLALCHEMY_ECHO = False
    SESSION_COOKIE_SECURE = True  # Requires HTTPS

# Configuration dictionary
config = {
    'development': DevelopmentConfig,
    'production': ProductionConfig,
    'default': DevelopmentConfig
}