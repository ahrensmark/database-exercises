use employees;

# functions exercise

select concat(first_name,' ', last_name)
from employees
where (first_name like '%E' and first_name like 'E%') and (last_name like '%E' and last_name like 'E%');

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
select first_name, last_name, hire_date, datediff(curdate(),hire_date) as days
from employees
where birth_date like '%12-25%' and hire_date between '1990-01-01' and '1999-12-31';


# mysql -u root -p -t < functions_exercises.sql