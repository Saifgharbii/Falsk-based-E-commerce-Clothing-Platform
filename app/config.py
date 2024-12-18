import os
from datetime import timedelta

class Config:
    # Basic Flask Configuration
    SECRET_KEY = 'your-secret-key'
    
    # File Upload Configuration
    UPLOAD_FOLDER = os.path.join('app', 'static', 'assets', 'product_images')
    MAX_CONTENT_LENGTH = 16 * 1024 * 1024  # 16MB max file size
    
    # Session Configuration
    PERMANENT_SESSION_LIFETIME = timedelta(days=7)
    
class DevelopmentConfig(Config):
    DEBUG = True
    # XAMPP MySQL default configuration
    SQLALCHEMY_DATABASE_URI = 'mysql://root:@localhost:3306/website_db'
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    
    # These are the default XAMPP MySQL settings
    MYSQL_HOST = 'localhost'
    MYSQL_PORT = 3306
    MYSQL_USER = 'root'
    MYSQL_PASSWORD = ''
    MYSQL_DB = 'website_db'

class ProductionConfig(Config):
    DEBUG = False
    SQLALCHEMY_DATABASE_URI = os.getenv('DATABASE_URL', 'mysql://root:@localhost:3306/website_db')
    SQLALCHEMY_TRACK_MODIFICATIONS = False

config_by_name = {
    'development': DevelopmentConfig,
    'production': ProductionConfig,
    'default': DevelopmentConfig
}