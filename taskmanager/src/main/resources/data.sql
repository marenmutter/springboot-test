/*-- src/main/resources/data.sql
INSERT INTO "users" (username, email, password, role) VALUES ('admin', 'admin@example.com', 'password123', 'Admin');
INSERT INTO "users" (username, email, password, role) VALUES ('user', 'user@example.com', 'password456', 'User');
*/

INSERT INTO users (username, email, password, role)
VALUES
    ('admin', 'admin@example.com', 'password123', 'Admin'),
    ('user1', 'user1@example.com', 'password456', 'User'),
    ('user2', 'user2@example.com', 'password789', 'User');

INSERT INTO task (description, status, title, user_id)
VALUES
('Fix the bug in login module', 'In Progress', 'Bug Fix', 1),  -- Assumes user_id 1
('Complete the user registration module', 'Completed', 'User Registration', 2),  -- Assumes user_id 2
('Implement password reset feature', 'Not Started', 'Password Reset', 3);

INSERT INTO task (description, status, title, user_id)
VALUES
    ('Fix the bug in login module', 'In Progress', 'Bug Fix', 1),  -- Assumes user_id 1
    ('Complete the user registration module', 'Completed', 'User Registration', 2),  -- Assumes user_id 2
    ('Implement password reset feature', 'Not Started', 'Password Reset', 3);

INSERT INTO project (created_date, description, name)
VALUES
    ('2024-11-07', 'This project aims to create a task management system.', 'Task Manager Development'),
    ('2024-11-06', 'A new feature for project management will be developed.', 'Project Management Feature'),
    ('2024-11-05', 'Initial research and planning for the next project iteration.', 'Project Iteration Planning');

INSERT INTO users (username, email, password, role)
VALUES
    ('john_doe', 'john_doe@example.com', 'johndoe123', 'Admin'),
    ('jane_smith', 'jane_smith@example.com', 'janesmith456', 'User'),
    ('michael_king', 'michael_king@example.com', 'michael789', 'User'),
    ('emma_rose', 'emma_rose@example.com', 'emma12345', 'User'),
    ('alex_walker', 'alex_walker@example.com', 'alexpassword', 'User');

INSERT INTO task (description, status, title, user_id)
VALUES
    ('Update the user authentication mechanism', 'In Progress', 'Authentication Update', 1),
    ('Create a documentation for the API endpoints', 'Not Started', 'API Documentation', 2),
    ('Refactor the user profile page layout', 'In Progress', 'User Profile Refactor', 3),
    ('Test the new task assignment feature', 'Completed', 'Task Assignment Testing', 4),
    ('Improve UI for task management section', 'Not Started', 'UI Improvements', 5),
    ('Add multi-language support to the project', 'In Progress', 'Language Support', 1),
    ('Implement advanced search functionality for tasks', 'Not Started', 'Advanced Search', 2),
    ('Fix UI bug in the login screen', 'Completed', 'Login Bug Fix', 3),
    ('Deploy project to production', 'In Progress', 'Project Deployment', 4),
    ('Add notification system for task updates', 'Completed', 'Notification System', 5);

INSERT INTO project (created_date, description, name)
VALUES
    ('2024-11-07', 'Development of a new task management app with enhanced features.', 'Advanced Task Manager'),
    ('2024-11-06', 'A full redesign of the user profile page for better UX.', 'User Profile Redesign'),
    ('2024-11-05', 'Creating an API to integrate task management with external apps.', 'Task Management API'),
    ('2024-11-04', 'Building a reporting system to track user activity and performance.', 'User Activity Reporting'),
    ('2024-11-03', 'Designing a dark mode feature for the app interface.', 'Dark Mode Implementation'),
    ('2024-11-02', 'Researching and developing a notification system for user actions.', 'User Notification System');
