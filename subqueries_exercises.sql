 use employees;

#1 Find all the employees with the same hire date as employee 101010 using a subquery.   69 Rows


SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    where emp_no = 101010);



#2 Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

select distinct title
from titles
where emp_no in(
    select emp_no
    from employees
    where first_name = 'Aamod'
);

# #3 Find all the current department managers that are female.
#
select first_name, last_name
from employees
where gender = 'F'
  and emp_no in (
    select emp_no
    from dept_manager
    where to_date > now());





-- mysql -u root -p -t < subqueries_exercises.sql



