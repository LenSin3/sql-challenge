# **sql-challenge**

## **Objective**

Create an employee database in **PostgreSQL** and make queries to analyze the data. The following tasks were completed:

### **Data Engineering**

- Inspect the remaining **.csv** files and sketch out an **ERD** of the tables using [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

- Create a table schema for each of the six CSV files specifying data types, primary keys, foreign keys, and other constraints.

- Import each CSV file into the corresponding SQL table.

### **Data Analysis**

After completion of the database:

- List employee number, last name, first name, sex, and salary.

- List first name, last name, and hire date for employees who were hired in 1986.

- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

- List the department of each employee with the following information: employee number, last name, first name, and department name.

- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B".

- List all employees in the Sales department, including their employee number, last name, first name, and department name.

- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

### **Data Analysis in Jupyter Notebook**

- Import the SQL database into Pandas via **SQLAlchemy**

- Create a histogram to visualize the most common salary ranges for employees.

- Create a bar chart of average salary by title.

### **Files**

The folowing files are in the EmployeeSQL folder:

- Schema of tables **employees_schema.sql**

- Queries in **employees_db_queries.sql**

- ERD: **QuickDBD-PEWLETT-HACKARD.pdf**, **QuickDBD-PEWLETT-HACKARD.png**

- Jupyter Notebook: **sql-challenge-python.ipynb**

- Images of histogram **salary_distribution.png** and bar chart **titles_salary.png**

### **Environment**

- **PostgreSQL 13**

- **Pyhton 3.6** in Jupyter Notebook

### **Dependencies in Jupyter Notebook**

- SQLAlchemy
- Pandas
- Matplotlib

