-- SCHEMA FOR DATABASE employees_db

-- Drop tables if they exist
DROP TABLE departments;
DROP TABLE titles;
DROP TABLE salaries;
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE employees;

-- TABLE 1: departments
-- Create departments table
CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

	
-- TABLE 2: titles
-- Create table titles
CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY,
	titles VARCHAR(30) NOT NULL
);

-- TABLE 3: salaries
-- Create table salaries
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL
);


-- TABLE 4: dept_manager
-- Create table dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES salaries(emp_no)
);

-- TABLE 5: dept_emp
-- Create table dept_emp
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(30),
	FOREIGN KEY(emp_no) REFERENCES salaries(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

-- TABLE 6: employees
-- Create table employees
CREATE TABLE employees (
	emp_no INT,
	emp_title VARCHAR(30),
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (30) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES salaries(emp_no),
	FOREIGN KEY(emp_title) REFERENCES titles(title_id)
);
