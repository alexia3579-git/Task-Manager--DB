/*
-- =============================================
-- SQL Schema for a Simple Task Manager
-- =============================================
-- This file contains the CREATE TABLE statements
-- that define the structure of the database.
*/

-- Table to store projects or categories
CREATE TABLE Projects (
    ProjectID INTEGER PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    Deadline DATE
);

-- Table to store individual tasks
CREATE TABLE Tasks (
    TaskID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    TaskDescription VARCHAR(255) NOT NULL,
    DueDate DATE,
    IsCompleted INTEGER DEFAULT 0, -- 0 for false, 1 for true
    Priority INTEGER,
    
    -- This line creates the link between the two tables
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);
