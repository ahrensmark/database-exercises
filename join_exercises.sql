use employees;

#2 write a query that shows each department along with the name of the current manager for that department
SELECT dept_name, concat(e.first_name, ' ', e.last_name) as dept_manager
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
order by dept_name asc;

#3 Find the name of all departments currently managed by women.
SELECT dept_name, concat(e.first_name, ' ', e.last_name) as dept_manager
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' and gender = 'F'
order by dept_name asc;

#4 Find the current titles of employees currently working in the Customer Service department
SELECT  t.title as title, count(t.title) as count
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN titles as t
              on t.emp_no = e.emp_no
WHERE de.to_date = '9999-01-01' and t.to_date = '9999-01-01'and d.dept_name = 'Customer Service'
group by t.title;
# order by dept_name asc;

#5 Find the current salary of all current managers.
SELECT dept_name, concat(e.first_name, ' ', e.last_name) as dept_manager, salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries s
              on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' and s.to_date = '9999-01-01'
order by dept_name asc;


-- mysql -u root -p -t < join_exercises.sql
