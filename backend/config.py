import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

class Config:
    """Base configuration"""
    SECRET_KEY = os.getenv('SECRET_KEY', 'dev-secret-key-change-in-production')
    
    # Database Configuration
    # Priority: DATABASE_URL > MYSQL_URL > individual components
    print("=== Database Configuration Debug ===")
    
    DATABASE_URL = os.getenv('DATABASE_URL')
    MYSQL_URL = os.getenv('MYSQL_URL')
    
    print(f"DATABASE_URL: {'Set' if DATABASE_URL else 'Not set'}")
    print(f"MYSQL_URL: {'Set' if MYSQL_URL else 'Not set'}")
    
    # Determine the database URI
    SQLALCHEMY_DATABASE_URI = None
    
    if DATABASE_URL and '://' in DATABASE_URL:
        # Check if it's a valid URL (not a template string)
        if not DATABASE_URL.startswith('{{') and not DATABASE_URL.startswith('${'):
            print("✓ Using DATABASE_URL from environment")
            SQLALCHEMY_DATABASE_URI = DATABASE_URL
        else:
            print(f"⚠️  DATABASE_URL is a template string: {DATABASE_URL}")
            print("    This means the variable reference is incorrect!")
    
    # Fall back to MYSQL_URL
    if not SQLALCHEMY_DATABASE_URI and MYSQL_URL and '://' in MYSQL_URL:
        print("✓ Using MYSQL_URL (Railway private network)")
        SQLALCHEMY_DATABASE_URI = MYSQL_URL
    
    # Build from Railway MySQL plugin variables (use MYSQL prefix, not DB prefix)
    if not SQLALCHEMY_DATABASE_URI:
        print("✓ Building from individual MySQL variables")
        DB_HOST = os.getenv('MYSQLHOST', os.getenv('DB_HOST', 'localhost'))
        DB_USER = os.getenv('MYSQLUSER', os.getenv('DB_USER', 'root'))
        DB_PASSWORD = os.getenv('MYSQLPASSWORD', os.getenv('DB_PASSWORD', ''))
        DB_NAME = os.getenv('MYSQLDATABASE', os.getenv('DB_NAME', 'elearning_db'))
        DB_PORT = os.getenv('MYSQLPORT', os.getenv('DB_PORT', '3306'))
        
        print(f"  Host: {DB_HOST}")
        print(f"  Port: {DB_PORT}")
        print(f"  Database: {DB_NAME}")
        print(f"  User: {DB_USER}")
        
        if DB_HOST and DB_USER and DB_NAME:
            SQLALCHEMY_DATABASE_URI = f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}?charset=utf8mb4"
        else:
            print("⚠️  Missing required database variables!")
    
    # Convert mysql:// to mysql+pymysql://
    if SQLALCHEMY_DATABASE_URI and SQLALCHEMY_DATABASE_URI.startswith('mysql://'):
        SQLALCHEMY_DATABASE_URI = SQLALCHEMY_DATABASE_URI.replace('mysql://', 'mysql+pymysql://', 1)
        print("✓ Converted to use PyMySQL driver")
    
    # Final validation
    if not SQLALCHEMY_DATABASE_URI or '://' not in SQLALCHEMY_DATABASE_URI:
        print("❌ ERROR: No valid database URI configured!")
        print("⚠️  Falling back to SQLite (this will cause issues!)")
        SQLALCHEMY_DATABASE_URI = 'sqlite:///fallback.db'
    
    # Check if using Railway internal network
    is_using_private = 'railway.internal' in SQLALCHEMY_DATABASE_URI if SQLALCHEMY_DATABASE_URI else False
    is_using_public = 'proxy.rlwy.net' in SQLALCHEMY_DATABASE_URI if SQLALCHEMY_DATABASE_URI else False
    
    if is_using_public:
        print("⚠️  WARNING: Using PUBLIC endpoint - you will be charged egress fees!")
        print("    Consider using railway.internal instead")
    elif is_using_private:
        print("✓ Using Railway private network (no egress fees)")
    
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
    
    # Connection pool settings
    # Build engine options dynamically based on database type
    SQLALCHEMY_ENGINE_OPTIONS = {
        'pool_pre_ping': True,
        'pool_recycle': 300,
    }
    
    # Only add MySQL-specific options if not using SQLite
    if SQLALCHEMY_DATABASE_URI and not SQLALCHEMY_DATABASE_URI.startswith('sqlite'):
        SQLALCHEMY_ENGINE_OPTIONS.update({
            'pool_size': 10,
            'max_overflow': 20,
            'connect_args': {
                'connect_timeout': 10
            }
        })
        print("✓ MySQL connection pool configured")
    else:
        print("⚠️  Using SQLite - limited connection pool options")
    
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