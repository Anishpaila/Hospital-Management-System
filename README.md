# 🏥 Hospital Management System (HMS)

A web-based Hospital Management System designed to simplify and automate hospital operations, including patient management, doctor management, appointment scheduling, prescriptions, billing, and medical records. The system provides a secure, user-friendly platform for administrators, doctors, and patients to improve healthcare services and reduce manual paperwork.

---

# 📋 Overview

The Hospital Management System (HMS) is a centralized healthcare management application developed using PHP and MySQL. It enables hospitals and clinics to efficiently manage patient information, doctor schedules, appointments, prescriptions, billing, and medical history through an intuitive web interface.

The project aims to digitize hospital workflows, improve data accessibility, reduce administrative effort, and enhance patient care.

---

# ✨ Key Features

- ✅ Secure Login & Authentication
- ✅ Admin Dashboard
- ✅ Patient Registration & Management
- ✅ Doctor Management
- ✅ Appointment Booking & Scheduling
- ✅ Prescription Management
- ✅ Medical Records Management
- ✅ Billing & Payment Management
- ✅ Department Management
- ✅ Search & Filter Functionality
- ✅ Responsive User Interface
- ✅ Database-Driven Management System

---

# 💻 Tech Stack

## Backend

- PHP
- MySQL

## Frontend

- HTML5
- CSS3
- JavaScript
- Bootstrap 5

## Database

- MySQL
- phpMyAdmin

## Development Environment

- XAMPP
- Apache Server

---

# 📁 Project Structure

```
Hospital-Management-System/
│
├── admin/
│   ├── dashboard.php
│   ├── doctors.php
│   ├── patients.php
│   ├── appointments.php
│   └── billing.php
│
├── doctor/
│   ├── dashboard.php
│   ├── appointments.php
│   └── prescriptions.php
│
├── patient/
│   ├── dashboard.php
│   ├── book_appointment.php
│   ├── medical_records.php
│   └── profile.php
│
├── database/
│   └── hms.sql
│
├── css/
├── js/
├── images/
├── includes/
├── config/
├── index.php
├── login.php
├── register.php
├── logout.php
└── README.md
```

---

# 🚀 Quick Start

## Prerequisites

- PHP 8.0 or above
- MySQL
- XAMPP/WAMP/LAMP
- phpMyAdmin

---

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/Hospital-Management-System.git
```

### 2. Move the project folder into the XAMPP `htdocs` directory.

Example:

```
C:\xampp\htdocs\Hospital-Management-System
```

### 3. Start the Apache and MySQL services using the XAMPP Control Panel.

### 4. Create a database named:

```
hms
```

### 5. Import the SQL file

```
database/hms.sql
```

using phpMyAdmin.

### 6. Configure the database connection.

```php
$host = "localhost";
$user = "root";
$password = "";
$database = "hms";
```

### 7. Open your browser and run

```
http://localhost/Hospital-Management-System
```

---

# 👨‍⚕️ Modules

## Admin

- Dashboard
- Manage Doctors
- Manage Patients
- Manage Departments
- Manage Appointments
- Billing Management
- Reports

## Doctor

- Login
- Dashboard
- View Appointments
- Manage Prescriptions
- Update Patient Records
- Medical History

## Patient

- Registration
- Login
- Book Appointment
- View Appointments
- Medical Records
- Prescription History
- Profile Management

---

# 🗄️ Database Tables

- Admin
- Doctors
- Patients
- Departments
- Appointments
- Prescriptions
- Medical Records
- Billing
- Payments

---

# ⚙️ Core Functionalities

### Patient Management

- Add new patients
- Update patient details
- Search patient records
- View medical history

### Doctor Management

- Add doctors
- Update doctor information
- Department allocation
- Consultation schedules

### Appointment Management

- Book appointments
- Cancel appointments
- Doctor availability
- Appointment history

### Prescription Management

- Create prescriptions
- View prescription history
- Store patient diagnosis

### Billing Management

- Generate invoices
- Payment tracking
- Billing records

---

# 🔒 Security Features

- Secure Login Authentication
- Session Management
- Role-Based Access Control
- Input Validation
- SQL Injection Prevention
- Password Protection

---

# 📈 System Highlights

- Responsive User Interface
- CRUD Operations
- MySQL Database Integration
- Easy Navigation
- Fast Data Retrieval
- User-Friendly Dashboard

---

# 🚀 Future Enhancements

- AI-Based Disease Prediction
- AI Symptom Checker
- Online Video Consultation
- Email Notifications
- SMS Appointment Alerts
- Online Payment Gateway
- PDF Medical Reports
- QR Code Appointments
- Multi-Language Support
- Cloud Deployment
- Mobile Application

---

# 📊 Project Summary

| Feature | Description |
|----------|-------------|
| Backend | PHP |
| Frontend | HTML, CSS, JavaScript, Bootstrap |
| Database | MySQL |
| Authentication | Session-Based Login |
| Architecture | Three-Tier Web Application |
| Platform | Web-Based |

---

# 🤝 Contributing

Contributions are welcome!

You can contribute by:

- Improving the UI/UX
- Adding new hospital modules
- Enhancing security
- Integrating AI features
- Optimizing database performance
- Developing a mobile application

---

# 📄 License

This project is developed for educational and academic purposes.

---

# 👨‍💻 Author

**Anish Paila**

B.Tech – Computer Science and Engineering

SRM University-AP

---

# 🙏 Acknowledgments

- PHP Community
- MySQL Documentation
- Bootstrap Framework
- XAMPP
- Open Source Hospital Management Projects
- Web Development Community
