use employees;

# order by exercise


# Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
SELECT  first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
order by first_name ASC;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT  *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
order by first_name ASC, last_name asc;

# Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT  *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
order by last_name ASC, first_name asc;

# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
# # Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name like 'e%'
order by emp_no asc;


# Now reverse the sort order for both queries.
SELECT  *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
order by last_name desc, first_name desc;

SELECT *
FROM employees
WHERE last_name like 'e%'
order by emp_no desc;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
# # Find all employees hired in the 90s and born on Christmas — 362 rows.
select *
from employees
where birth_date like '%12-25%' and hire_date between '1990-01-01' and '1999-12-31'
order by birth_date asc, hire_date desc;



# mysql -u root -p -t < order_by_exercises.sql