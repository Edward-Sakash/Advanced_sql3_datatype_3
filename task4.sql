SELECT DISTINCT department_id, name, salary
FROM employees e1
WHERE EXISTS (
    SELECT *
    FROM employees e2
    WHERE e2.salary > 5500
    AND e2.department_id = e1.department_id 
);
