from app import create_app, db
from app.models.models import User
from werkzeug.security import generate_password_hash

def init_db():
    app = create_app('development')
    
    with app.app_context():
        # Drop all existing tables
        db.drop_all()
        
        # Create all tables
        db.create_all()
        
        # Create an admin user
        admin = User(
            email='admin@example.com',
            first_name='Admin',
            last_name='User',
            user_type='Admin'
        )
        admin.set_password('admin123')
        
        db.session.add(admin)
        db.session.commit()
        
        print("Database initialized successfully!")
        print("Admin user created:")
        print("Email: admin@example.com")
        print("Password: admin123")

if __name__ == '__main__':
    init_db()
