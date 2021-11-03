-- 1. Write a query to find the number of jobs available in the employees table. 
    -- use Job_id to find number of jobs
    -- use count aggregation with distinct to get unique jobs only
SELECT COUNT(DISTINCT job_id)
FROM employees;