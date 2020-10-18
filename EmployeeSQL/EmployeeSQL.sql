-- SCHEMA FOR DATABASE employees_db

-- TABLE 1: departments
-- Drop table if it exists
DROP TABLE departments;

-- Create departments table
CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

	
-- TABLE 2: titles
-- Drop table if it exists
DROP TABLE titles;

-- Create table titles
CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY,
	titles VARCHAR(30) NOT NULL
);

-- TABLE 3: salaries
-- Drop table if exists
DROP TABLE salaries;

-- Create table salaries
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL
);


-- TABLE 4: dept_manager
-- Drop table if it exists
DROP TABLE dept_manager;

-- Create table dept_manager
CREATE TABLE dept_manager (
	dept_no NOT NULL,
	emp_no NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES salaries (emp_no)
);

-- TABLE 5: dept_emp
-- Drop table if it exists
DROP TABLE dept_emp;

-- Create table dept_emp
CREATE TABLE dept_emp (
	emp_no NOT NULL,
	dept_no NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES salaries (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- TABLE 6: employees
-- Drop table if it exists
DROP TABLE employees;

-- Create table employees
CREATE TABLE employees (
	emp_no NOT NULL,
	emp_title VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (30) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES salaries (emp_no)
);
