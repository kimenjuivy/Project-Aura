import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

class Config:
    """Base configuration"""
    SECRET_KEY = os.getenv('SECRET_KEY', 'dev-secret-key-change-in-production')
    
    # Database Configuration - Support both Railway and local dev
    DB_HOST = os.getenv('MYSQLHOST', 'localhost')
    DB_USER = os.getenv('MYSQLUSER', 'root')
    DB_PASSWORD = os.getenv('MYSQLPASSWORD', '')
    DB_NAME = os.getenv('MYSQLDATABASE', 'elearning_db')
    DB_PORT = os.getenv('MYSQLPORT', '3306')
    
    # SQLAlchemy Configuration
    # Priority: DATABASE_URL > MYSQL_URL > build from components
    DATABASE_URL = os.getenv('DATABASE_URL')
    MYSQL_URL = os.getenv('MYSQL_URL')

    # Enhanced database URI configuration with debugging
    print("=== Database Configuration Debug ===")
    print(f"DATABASE_URL: {'Set' if DATABASE_URL else 'Not set'}")
    print(f"MYSQL_URL: {'Set' if MYSQL_URL else 'Not set'}")
    
    if DATABASE_URL:
        print("✓ Using DATABASE_URL from environment")
        # Handle both postgresql:// and mysql:// URLs
        if DATABASE_URL.startswith('postgresql://'):
            print("🔍 Database type: PostgreSQL")
            # If you need MySQL but got PostgreSQL, this will need adjustment
            SQLALCHEMY_DATABASE_URI = DATABASE_URL
        elif DATABASE_URL.startswith('mysql://'):
            print("🔍 Database type: MySQL")
            SQLALCHEMY_DATABASE_URI = DATABASE_URL.replace('mysql://', 'mysql+pymysql://', 1)
        else:
            print(f"🔍 Database type: Other ({DATABASE_URL.split('://')[0] if '://' in DATABASE_URL else 'Unknown'})")
            SQLALCHEMY_DATABASE_URI = DATABASE_URL
        
        # Validate the URI isn't malformed
        if ':@:' in SQLALCHEMY_DATABASE_URI or '@:/' in SQLALCHEMY_DATABASE_URI:
            print("⚠️  WARNING: DATABASE_URL appears malformed - falling back to component build")
            SQLALCHEMY_DATABASE_URI = f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}?charset=utf8mb4"
            
    elif MYSQL_URL:
        print("✓ Using MYSQL_URL from environment")
        if MYSQL_URL.startswith('mysql://'):
            SQLALCHEMY_DATABASE_URI = MYSQL_URL.replace('mysql://', 'mysql+pymysql://', 1)
        else:
            SQLALCHEMY_DATABASE_URI = MYSQL_URL
        
        # Validate MYSQL_URL
        if ':@:' in SQLALCHEMY_DATABASE_URI or '@:/' in SQLALCHEMY_DATABASE_URI:
            print("⚠️  WARNING: MYSQL_URL appears malformed - falling back to component build")
            SQLALCHEMY_DATABASE_URI = f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}?charset=utf8mb4"
    else:
        print("✓ Building database URI from individual components")
        SQLALCHEMY_DATABASE_URI = f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}?charset=utf8mb4"

    # Final validation
    if not SQLALCHEMY_DATABASE_URI or '://' not in SQLALCHEMY_DATABASE_URI:
        print("❌ ERROR: No valid database URI configured!")
        # Fallback to SQLite for emergency
        SQLALCHEMY_DATABASE_URI = 'sqlite:///fallback.db'
        print("⚠️  Using SQLite fallback database")

    # Hide password in debug output
    debug_uri = SQLALCHEMY_DATABASE_URI
    if '@' in debug_uri:
        parts = debug_uri.split('@')
        user_pass = parts[0].split('://')[-1]
        if ':' in user_pass:
            user = user_pass.split(':')[0]
            debug_uri = debug_uri.replace(user_pass, f"{user}:****")
    
    print(f"✓ Final Database URI: {debug_uri}")
    print("=====================================")

    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_ECHO = False
    
    # Connection pool settings for Railway
    SQLALCHEMY_ENGINE_OPTIONS = {
        'pool_pre_ping': True,
        'pool_recycle': 300,
        'pool_size': 10,
        'max_overflow': 20,
        'connect_args': {
            'connect_timeout': 10
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