SELECT department_id
FROM employees e1
WHERE NOT EXISTS (
    SELECT *
    FROM employees e2
    WHERE e2.salary < 4500
    AND e1.department_id = e2.department_id 
);
