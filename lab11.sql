-- 1. Assignments for a specific course
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- 2. Earliest assignment due date
SELECT min(due_date) AS earliest_due_date
FROM assignments;

-- 3. Latest assignment due date
SELECT max(due_date) AS latest_due_date
FROM assignments;

-- 4. Assignments due on a specific date
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- 5. Find all assignments due in october
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- 6. Find the most recent completed assignment
SELECT MAX(due_date) AS most_recent_completed_date
FROM assignments
WHERE status = 'Completed';