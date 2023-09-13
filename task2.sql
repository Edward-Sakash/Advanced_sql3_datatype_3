-- Find the name of the employee who earns the most in each department
-- We use aliases e1 and e2 to reference the employees table in the main query and subquery, respectively.
-- The subquery finds the maximum salary for each department.
-- The main query compares the salary of each employee with the maximum salary in their department.
SELECT department_id, name
FROM employees AS e1
WHERE salary in(
    -- Subquery to find the maximum salary in each department (e2 represents the subquery alias)
    SELECT MAX(salary)
    FROM employees AS e2
    WHERE e1.department_id = e2.department_id
);
