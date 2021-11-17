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

-- 6. Write a query to get the highest, lowest, total, and average salary of all employees.
    --- aggregate for max(), min(), sum(), avg() on salary column
SELECT MAX(salary) "Maximum", MIN(salary) "Minimum", SUM(salary) "Total", AVG(salary) "Average"
FROM employees;

-- 7. Write a query to get the number of employees working in each post.
    -- use job_id column
    --- use COUNT()
    --- use group by
SELECT job_id, COUNT(*)
FROM employees
GROUP BY job_id;

-- 8. Write a query to get the difference between the highest and lowest salaries.
    --- use min() and max()
    ---- use salary column
SELECT MAX(salary) - MIN(salary) AS "Salary Difference"
FROM employees;

-- 9. Write a query to find the manager ID and the salary of the lowest-paid employee under that manager.
    --- select manager_id, salary column
    --- aggregate on salary column(min())
    --- filter to where manager_id IS NOT NULL
    --- groupby manager_id
SELECT manager_id, MIN(salary)
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
ORDER BY MIN(salary) DESC;


-- 10. Write a query to get the department ID and the total salary payable in each department.
    --- select department_id, salary column
    ---aggregate on salary column (sum())
    --- groupby sum(salary) DESC
    ---filter where department_id IS NOT NULL
SELECT department_id, SUM(salary)
FROM employees
GROUP BY department_id;


-- 11. Write a query to get the average salary for each post excluding programmer.
    --- aggregate on salary column (AVG())
    -- filter for all Job_id and exclude IT_PROG
    -- include groupby to see by each post

SELECT job_id, AVG(salary)
FROM employees
WHERE job_id <> 'IT_PROG'
GROUP BY job_id;

-- 12. Write a query to get the total salary, maximum, minimum and average salary of all posts for those departments which ID 90.
    ---aggregate on salary column (sum(), min(), max(), avg())
    ---- show by job_id column
    ---- filter by department where ID is 90
SELECT job_id, SUM(salary), MAX(salary), MIN(salary), AVG(salary)
FROM employees
WHERE department_id = '90'
GROUP BY job_id;