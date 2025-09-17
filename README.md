Human Resource Management System (HRMS)

A C# desktop-based application with database integration that manages job postings, users, employers, and admins. Built as a university project for Object-Oriented Programming 2 (CSC2210) at AIUB.

📌 Features
👨‍💼 Admin

Secure login and dashboard.

Manage job listings (CRUD).

Manage news postings.

View and manage users.

View contact requests.

Monitor all system activities.

👤 User

Sign up and login securely.

Create, view, and edit profile (acts as a resume).

Browse and filter jobs.

Apply for jobs directly.

Logout for secure access.

🏢 Employer

Login securely.

Post, edit, and delete job listings.

View applicant profiles and resumes.

Pay for posting jobs (payment gateway integrated).

Review and rate users after hiring.

Update employer profile.

🗄 Database Design
Main Tables:

Users – Stores user credentials and profile data.

Jobs – Job postings with full details.

AppliedJobs – Tracks user job applications.

Employers – Employer accounts and job history.

News – Admin-published announcements.

Contact – User inquiries/messages.

Sample Schema
CREATE TABLE Jobs (
    JobId INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX),
    Salary NVARCHAR(100),
    JobType NVARCHAR(50),
    CompanyName NVARCHAR(200),
    Email NVARCHAR(100),
    Address NVARCHAR(300),
    Country NVARCHAR(100),
    State NVARCHAR(100),
    CreateDate DATETIME DEFAULT GETDATE()
);

🖥️ Tech Stack

Language: C# (.NET, Windows Forms)

Database: SQL Server

Environment: Visual Studio

Architecture: 3-layered (UI, Business Logic, Database)

📊 ER Diagram & Workflows

Full ER diagram included in project documentation.

Supports relationships between Admin, User, and Employer roles.

🚀 Getting Started

Clone the repository:

git clone https://github.com/yourusername/human-resource-management-system.git


Open the solution file in Visual Studio.

Import the database scripts into SQL Server.

Update the connection string in App.config with your SQL Server credentials.

Run the project.

📸 Screenshots

(Add relevant screenshots of your forms here – Login, Dashboard, Job Post, etc.)

👥 Contributors

Abdur Rahman (23-53305-3)

Anamika Baishnab (23-53314-3)

Md. Tahsin Ahmed Niloy (23-53321-3)

Md. Emon Biswas (23-53279-3)

📄 License

This project is for educational purposes only and is not intended for production use.
