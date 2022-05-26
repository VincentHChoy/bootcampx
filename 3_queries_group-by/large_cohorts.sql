SELECT cohorts.name ,count(cohorts.name)
FROM students
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(cohorts.name) >= 18
ORDER BY cohorts.name;
