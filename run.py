import os
from app import create_app, db

# Get environment from system environment variable, default to 'development'
env = os.getenv('FLASK_ENV', 'development')
app = create_app(env)

if __name__ == '__main__':
    with app.app_context():
        db.create_all()  # Create database tables
    app.run(host='127.0.0.1', port=5500)