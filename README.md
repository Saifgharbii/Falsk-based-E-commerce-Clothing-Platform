# E-commerce Clothing Platform

A web-based e-commerce platform built with Flask and MySQL, featuring user authentication, product management, and an admin dashboard. The application follows the MVC (Model-View-Controller) architecture pattern.

## Features

- User Authentication (Login/Registration)
- Product Browsing and Filtering
- Product Search Functionality
- Shopping Cart Management
- Admin Dashboard
  - Product Management (Add/Edit/Delete)
  - Admin User Management
  - Sales Analytics
- Responsive Design using Bootstrap

## Prerequisites

Before running this application, make sure you have the following installed:
- Python 3.x
- XAMPP (for MySQL database)
- pip (Python package manager)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
```

2. Create a virtual environment (recommended):
```bash
python -m venv venv
```

3. Activate the virtual environment:
- Windows:
```bash
venv\Scripts\activate
```
- Unix or MacOS:
```bash
source venv/bin/activate
```

4. Install required packages:
```bash
pip install -r requirements.txt
```

5. Database Setup:
   - Start XAMPP Control Panel
   - Start Apache and MySQL services
   - Open phpMyAdmin (http://localhost/phpmyadmin)
   - Create a new database named `website_db`
   - Import the database structure from `website_db.sql` file

## Configuration

The application uses different configurations for development and production environments. You can find these settings in `config.py`.

Default development configuration:
- Database Host: localhost
- Database Port: 3306
- Database Name: website_db
- Database User: root
- Database Password: (empty)

To modify these settings, update the corresponding values in `config.py`.

## Running the Application

1. Make sure XAMPP's MySQL service is running

2. Run the application:
```bash
python run.py
```

3. Access the application in your web browser at:
```
http://127.0.0.1:5500
```

## Project Structure

```
project/
│
├── app/
│   ├── controller/        # Route handlers and business logic
│   ├── model/            # Database models
│   ├── static/           # Static files (CSS, JS, images)
│   ├── views/            # HTML templates
│   ├── __init__.py       # Application factory
│   └── config.py         # Configuration files
│
├── venv/                 # Virtual environment (not included in repo)
├── requirements.txt      # Project dependencies
├── run.py               # Application entry point
├── website_db.sql       # Database dump file
└── README.md            # This file
```

## Environment Variables

The following environment variables can be set to configure the application:
- `FLASK_ENV`: Set to 'development' or 'production' (default: 'development')
- `DATABASE_URL`: Database connection string (used in production)

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request
