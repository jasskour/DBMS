📌 Project Title
Court Case Management System

📖 Description
The Court Case Management System is a web-based application designed to streamline and digitize the management of legal cases. It provides a centralized platform for court staff, judges, and lawyers to manage case records, hearings, client details, and case statuses efficiently. This system improves workflow, reduces paperwork, and enables fast access to case-related information.

🎯 Key Features
Case Registration and Unique Case ID Generation
Party and Lawyer Information Management
Case Status Updates (Pending, Active, Closed)
Hearing Schedules and Notifications
Admin Panel for Managing All Data
Secure Login for Admin, Lawyers, and Staff
🛠️ Technologies Used
Frontend: HTML, CSS, JavaScript
Backend: PHP
Database: MySQL
Server: XAMPP or WAMP (Apache + MySQL + PHP)
⚙️ Installation Steps
Install XAMPP/WAMP on your computer.
Move the project folder to the htdocs directory (for XAMPP) or www (for WAMP).
Start Apache and MySQL from the control panel.
Open phpMyAdmin and create a new database (e.g., court_db).
Import the court_db.sql file into the database.
Open the browser and run the project via:
http://localhost/court-case-management-system
👤 User Roles
Admin: Can add, update, or delete cases, assign lawyers, and manage hearings.
Lawyer: Can view assigned cases, update notes, and track court hearings.
Staff: Can assist with case entries and update client information.
📂 Project Structure
/court-case-management-system/
│
├── index.php
├── login.php
├── register_case.php
├── dashboard/
│   ├── admin/
│   ├── lawyer/
│   └── staff/
├── db/
│   └── config.php
├── sql/
│   └── court_db.sql
└── assets/
    └── css, js, images
👨‍⚖️ Sample Modules
Case Module: Manages details like case number, title, parties, type, and status.
Lawyer Module: Stores lawyer profiles and case assignments.
Schedule Module: Handles upcoming hearing dates and reminders.
