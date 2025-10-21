import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

class Config:
    """Base configuration"""
    SECRET_KEY = os.getenv('SECRET_KEY', 'dev-secret-key-change-in-production')
    
    # Database Configuration - SIMPLIFIED
    # Use Railway's internal MYSQL_URL when available
    MYSQL_URL = os.getenv('MYSQL_URL')
    
    if MYSQL_URL and MYSQL_URL.startswith('mysql://'):
        # Use Railway's provided URL (this should be the internal one)
        SQLALCHEMY_DATABASE_URI = MYSQL_URL.replace('mysql://', 'mysql+pymysql://', 1)
        print(f"Using Railway MYSQL_URL: mysql+pymysql://...@{MYSQL_URL.split('@')[1]}")
    else:
        # Fallback for local development
        DB_HOST = os.getenv('MYSQLHOST', 'localhost')
        DB_USER = os.getenv('MYSQLUSER', 'root')
        DB_PASSWORD = os.getenv('MYSQLPASSWORD', '')
        DB_NAME = os.getenv('MYSQLDATABASE', 'elearning_db')
        DB_PORT = os.getenv('MYSQLPORT', '3306')
        SQLALCHEMY_DATABASE_URI = f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
        print("Using local development database")
    
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_ECHO = True  # Set to True to see SQL queries for debugging
    
    # Connection pool settings
    SQLALCHEMY_ENGINE_OPTIONS = {
        'pool_pre_ping': True,
        'pool_recycle': 300,
        'pool_size': 5,
        'max_overflow': 10,
        'connect_args': {
            'connect_timeout': 30  # Increased timeout
        }
    }
    
    # Session Configuration
    PERMANENT_SESSION_LIFETIME = 3600
    SESSION_COOKIE_SECURE = False
    SESSION_COOKIE_HTTPONLY = True
    SESSION_COOKIE_SAMESITE = 'Lax'
    
    # Flask Configuration
    DEBUG = os.getenv('FLASK_ENV') == 'development'
    TESTING = False
    
    # File Upload Configuration
    MAX_CONTENT_LENGTH = 16 * 1024 * 1024
    UPLOAD_FOLDER = 'uploads'
    ALLOWED_EXTENSIONS = {'pdf', 'png', 'jpg', 'jpeg', 'gif', 'mp4', 'mp3'}

class DevelopmentConfig(Config):
    """Development configuration"""
    DEBUG = True
    SQLALCHEMY_ECHO = True

class ProductionConfig(Config):
    """Production configuration"""
    DEBUG = False
    SQLALCHEMY_ECHO = False
    SESSION_COOKIE_SECURE = True

# Configuration dictionary
config = {
    'development': DevelopmentConfig,
    'production': ProductionConfig,
    'default': DevelopmentConfig
}