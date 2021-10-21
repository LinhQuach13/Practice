-- Write a query to display the names (first_name, last_name) using an alias name “First Name", "Last Name".
SELECT first_name "First Name",  last_name "Last Name" 
FROM employees;

--  Write a query to get a unique department ID from employee table.
SELECT DISTINCT department_id
FROM employees;