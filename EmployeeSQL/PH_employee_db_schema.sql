-- Schema
/*
Data Engineering
1. We will use the information provided from the six CSV files to create a table Schema.
Based on the data from the CSV files used to create the initial Entity Relationship Diagram,
we determined the following is the most efficient sequence to load the data into the SQL database:
	1) titles 
	2) employees 
	3) departments 
	4) dept_emp 
	5) dept_manager 
	6) salaries 
2. We will import each CSV file into its corresponding SQL table using the import function in pgAdmin.
Make initial comments here ++ will replace this line with other notes.
*/

-- Create the tables and import CSV files needed for SQL database
-- table 1: titles
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);
-- import titles.csv into the database
-- view titles tables in SQL database
SELECT *
FROM titles;

-- table 2: employees
CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);
-- import employees.csv into the database
-- view employees tables in SQL database
SELECT *
FROM employees;

-- table 3: departments
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);
-- import departments.csv into the database
-- view departments tables in SQL database
SELECT *
FROM departments;

-- table 4: dept_emp
-- table contains composite key
CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
-- import dept_emp.csv into the database
-- view dept_emp tables in SQL database
SELECT *
FROM dept_emp;

-- table 5: dept_manager
-- table contains composite key
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INTEGER NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
-- import dept_manager.csv into the database
-- view dept_manager tables in SQL database
SELECT *
FROM dept_manager;

-- table 6: salaries
-- table contains composite key
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	PRIMARY KEY (emp_no, salary),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
-- import salaries.csv into the database
-- view salaries tables in SQL database
SELECT*
FROM salaries;


