from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager
from .config import config_by_name
import os

db = SQLAlchemy()
login_manager = LoginManager()

def create_app(config_name='development'):
    app = Flask(__name__,template_folder='views/templates')
    
    # Load the appropriate configuration
    app.config.from_object(config_by_name[config_name])
    
    # Initialize extensions
    db.init_app(app)
    login_manager.init_app(app)
    login_manager.login_view = 'auth.login'
    
    # Ensure upload folder exists
    os.makedirs(app.config['UPLOAD_FOLDER'], exist_ok=True)
    
    # Register blueprints
    from .controller.auth import auth
    from .controller.admin import admin
    from .controller.products import products
    
    app.register_blueprint(auth)
    app.register_blueprint(admin)
    app.register_blueprint(products)
    
    return app