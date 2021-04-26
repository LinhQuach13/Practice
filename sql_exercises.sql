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