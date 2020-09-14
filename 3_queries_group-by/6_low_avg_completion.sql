SELECT students.name as student, AVG(assignment_submissions.duration) as avg_assignment_duration, AVG(assignments.duration) as avg_est_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY avg_assignment_duration, avg_est_duration;