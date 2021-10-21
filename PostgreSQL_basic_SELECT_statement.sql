-- Write a query to display the names (first_name, last_name) using an alias name “First Name", "Last Name".
SELECT first_name "First Name",  last_name "Last Name" 
FROM employees;

--  Write a query to get a unique department ID from employee table.
SELECT DISTINCT department_id
FROM employees;

-- Write a query to get the details of all employees from the employee table in descending order by their first name.
SELECT *
FROM employees
ORDER BY first_name DESC;

--- Write a query to get the names (first_name, last_name), salary and 15% of salary as PF for all the employees.
    --- create new PF column as 15% of their salary (aggregate in select statement)
    --- filter to only first_name, last_name, and salary columnn
SELECT first_name, last_name, salary, salary*.15 PF
FROM employees;