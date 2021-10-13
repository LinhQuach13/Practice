USE albums_db;

#Looking at data in albums database
select *
from albums;

# Selecting artist column
SELECT artist
FROM albums;


#**************** BASIC STATEMENTS ********************
#Write queries with the following information:

#The name of all albums by Pink Floyd
SELECT artist, name
FROM albums
WHERE artist LIKE 'Pink Floyd';

#The year Rumours was released
select artist, name, release_date 
FROM albums
WHERE name LIKE 'Rumours';


#The genre for the album Nevermind
   #look at database again
   select *
   from albums;
     #see genre and name (for album name) are columns in albums database
     select genre, name
     from albums
     WHERE name = 'Nevermind';
     
     
# **************** JOINS**********************
# 1. Use employees Database
#Use the employees database.

USE employees;

# Department table joined with dept_manger table.
select dept_name as "Department Name"
from departments
join dept_manager on dept_manager.dept_no = departments.dept_no;

#Joining dept_manager and employees tables
select *
from dept_manager
join employees on employees.emp_no= dept_manager.emp_no;


# Managers with their departments
select dept_name as "Department Name", concat(first_name, " ", last_name) as "Department Manager"
from departments
join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on employees.emp_no= dept_manager.emp_no
WHERE dept_manager.to_date > curdate()
ORDER BY dept_name ASC;

-- Access employees database
USE employees;

-- Join employees and salaries tables
SELECT * 
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

-- another way to join tables
SELECT *
FROM employees
JOIN salaries using(emp_no);

/* 
■ Write a query to find the names of all customer id from the customers table where the
customers.age is 21. */
USE mall_customers;

SELECT customer_id, age
FROM customers
WHERE age = 21;

/* ■ Write a query to calculate the average population per continent with 2 or more
regions in the table. */
USE world;

SELECT AVG(population) AS AveragePopulation, region, Continent
FROM country
GROUP BY region, Continent
HAVING COUNT(region) >= 2
ORDER BY COUNT(region) DESC;


/* ■ Write a query to calculate the average population per region, order by ascending.   */
SELECT AVG(population), region
FROM country
GROUP BY region
ORDER BY region ASC;

