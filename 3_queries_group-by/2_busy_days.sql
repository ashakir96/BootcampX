SELECT day, COUNT(assignments) as total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(assignments) > 9
ORDER BY day;
