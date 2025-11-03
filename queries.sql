/*
-- =============================================
-- Example Queries for the Task Manager
-- =============================================
-- This file shows how to interact with the
-- database (add, find, and update data).
*/

-- --- INSERT Queries (Adding data) ---

-- Add two projects
INSERT INTO Projects (ProjectID, ProjectName, Deadline)
VALUES (1, 'Finish GitHub Project', '2025-11-10');

INSERT INTO Projects (ProjectID, ProjectName)
VALUES (2, 'Groceries');

-- Add tasks for the GitHub project
INSERT INTO Tasks (TaskID, ProjectID, TaskDescription, Priority, DueDate)
VALUES (1, 1, 'Write schema.sql file', 1, '2025-11-03');

INSERT INTO Tasks (TaskID, ProjectID, TaskDescription, Priority, DueDate)
VALUES (2, 1, 'Write README.md file', 1, '2025-11-04');

INSERT INTO Tasks (TaskID, ProjectID, TaskDescription, Priority)
VALUES (3, 1, 'Upload files to GitHub', 2);

-- Add tasks for the Groceries project
INSERT INTO Tasks (TaskID, ProjectID, TaskDescription, Priority)
VALUES (4, 2, 'Buy milk', 3);

INSERT INTO Tasks (TaskID, ProjectID, TaskDescription, Priority)
VALUES (5, 2, 'Buy eggs', 3);


-- --- SELECT Queries (Finding data) ---

-- Find all tasks that are not complete
SELECT * FROM Tasks
WHERE IsCompleted = 0;

-- Find all tasks for the 'Finish GitHub Project' (ProjectID = 1)
-- This uses a JOIN to show the project name
SELECT
    Projects.ProjectName,
    Tasks.TaskDescription,
    Tasks.DueDate
FROM Tasks
INNER JOIN Projects ON Tasks.ProjectID = Projects.ProjectID
WHERE Tasks.ProjectID = 1;

-- Find all incomplete tasks, ordered by priority
SELECT TaskDescription, Priority
FROM Tasks
WHERE IsCompleted = 0
ORDER BY Priority; -- Lower numbers (higher priority) will appear first


-- --- UPDATE Query (Changing data) ---

-- Mark 'Write schema.sql file' as complete
UPDATE Tasks
SET IsCompleted = 1
WHERE TaskID = 1;
```
