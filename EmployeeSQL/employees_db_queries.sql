-- Check if tables were loaded correctly and without errors
SELECT * FROM departments LIMIT 1;
SELECT * FROM titles LIMIT 1;
SELECT * FROM salaries LIMIT 1;
SELECT * FROM dept_manager LIMIT 1;
SELECT * FROM dept_emp LIMIT 1;
SELECT * FROM employees LIMIT 1;

-- Query employee number, last name, first name, sex, and salary
SELECT e.emp_no AS employee_number, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
FROM employees e
JOIN salaries s
ON s.emp_no = e.emp_no;

-- Query first name, last name, and hire date for employees who were hired in 1986
SELECT first_name,
		last_name,
		hire_date
FROM employees
WHERE date_part('year', hire_date) = 1986;

-- Query manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name
SELECT dm.dept_no AS department_number,
	d.dept_name AS department,
	dm.emp_no AS manager_employee_number,
	e.last_name,
	e.first_name
FROM dept_manager dm
JOIN departments d
ON d.dept_no = dm.dept_no
INNER JOIN employees e
ON e.emp_no = dm.emp_no;

-- Query department of each employee with the following information: 
-- employee number, last name, first name, and department name
SELECT e.emp_no AS employee_number,
	e.last_name,
	e.first_name,
	d.dept_name AS department_name
FROM employees e
INNER JOIN dept_emp de
ON de.emp_no = e.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no;

-- Query first name, last name, and sex for employees whose first name is "Hercules" and 
-- last names begin with "B"
SELECT last_name, 
	first_name, 
	sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Query all employees in the Sales department, 
-- including their employee number, last name, first name, and department name
CREATE VIEW employee_queries AS
SELECT e.emp_no AS employee_number,
	e.last_name,
	e.first_name,
	d.dept_name AS department_name
FROM employees e
INNER JOIN dept_emp de
ON de.emp_no = e.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no;

SELECT *
FROM employee_queries
WHERE department_name = 'Sales';

-- Query all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name
SELECT *
FROM employee_queries
WHERE department_name IN ('Sales', 'Development');

-- Query the frequency count of employee last names,
-- i.e., how many employees share each last name in descending order
SELECT last_name, 
	   COUNT(last_name) AS frequency_count
FROM employee_queries
GROUP BY 1
ORDER BY 2 DESC;

-- DROP VIEW employee_queries;
