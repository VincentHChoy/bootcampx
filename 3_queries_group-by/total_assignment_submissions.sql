SELECT cohorts.name , Count(assignment_submissions.id)
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assignment_submissions ON student_id = students.id
GROUP BY cohorts.name
ORDER BY Count(assignment_submissions.id) DESC;
