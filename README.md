# Task-Manager--DB
This is my first project on GitHub! It's a SQL database design for a simple task manager or to-do list. The goal is to create a structured database that can organize tasks into different projects.
This project includes the SQL schema (the blueprint for the database) and some queries (examples of how to use it).

Database Schema:
The database consists of two main tables: Projects and Tasks. This allows a "one-to-many" relationship, where one project can have many tasks.
Projects Table
This table stores the high-level projects or categories for your tasks.
ProjectID: A unique ID for each project (Primary Key).
ProjectName: The name of the project (e.g., "Home", "Work", "School").
Deadline: An optional deadline for the entire project.

Tasks Table:
This table stores all the individual tasks. Each task is linked to a project.
TaskID: A unique ID for each task (Primary Key).
ProjectID: Links the task to a project in the Projects table (Foreign Key).
TaskDescription: The text of what needs to be done.
DueDate: An optional due date for the task.
IsCompleted: A status to show if the task is done (0 = No, 1 = Yes).
Priority: A number to rank the task's importance (e.g., 1 = High, 2 = Medium, 3 = Low).

