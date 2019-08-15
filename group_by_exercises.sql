# group exercise
use employees;
# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:

SELECT DISTINCT title
FROM titles;


# Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
select last_name
from employees
where last_name like '%E' and last_name like 'E%'
GROUP BY last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
select first_name, last_name
from employees
where last_name like '%E' and last_name like 'E%'
group by first_name, last_name;

# Find the unique last names with a 'q' but not 'qu'. Your results should be:
select last_name
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;

# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
select last_name, count(last_name)
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name
order by count(last_name);

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.

SELECT concat(count(*), ' ',gender) as 'Gender count'
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya') and (gender = 'M' or gender = 'F')
GROUP BY gender
ORDER BY COUNT(*) desc;
# Find all employees whose last name starts with 'E' — 7,330 rows.


-- mysql -u root -p -t < group_by_exercises.sql