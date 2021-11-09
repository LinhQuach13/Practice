-- 1. Write a query to find the number of jobs available in the employees table. 
    -- use Job_id to find number of jobs
    -- use count aggregation with distinct to get unique jobs only
SELECT COUNT(DISTINCT job_id)
FROM employees;

-- 2.Write a query to get the total salaries payable to employees.
   --- new calculation needed for total salaries
   --- use salary column
   --- aggregate on select statement
SELECT SUM(salary) 
FROM employees;


-- 3. Write a query to get the minimum salary from employees table.
    ---use MIN function
    --- aggregate on select statement
    --- use salary column
SELECT MIN(salary)
FROM employees;

-- 4. Write a query to get the maximum salary of an employee working as a Programmer.
    ---aggregate to obtain max salary using salary column
    ----use job_id column to filter for programmer (IT_PROG)
SELECT MAX(salary)
FROM employees
WHERE job_id = 'IT_PROG';

-- 5. Write a query to get the average salary and number of employees working in the department which ID is 90.
    -- use average function on salary and count employees
    --- filter by dept ID 90
SELECT AVG(salary), COUNT(*)
FROM employees
WHERE dept_id = 90;
