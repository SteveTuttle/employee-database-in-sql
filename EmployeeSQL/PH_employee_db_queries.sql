-- Queries
/*
Data Analysis
Our goal is to create a query for the following based on the data in the Schema:
Query 1: List the employee number, last name, first name, sex, and salary of each employee.
Query 2: List the first name, last name, and hire date for the employees who were hired in 1986.
Query 3: List the manager of each department along with their department number, department name, employee number, last name, and first name.
Query 4: List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Query 5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Query 6: List each employee in the Sales department, including their employee number, last name, and first name.
Query 7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Query 8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Create Views for each Query for reference.
*/

-- Query 1: List the employee number, last name, first name, sex, and salary of each employee.
-- Selecting from employees and salaries tables. Performing Join function
CREATE VIEW query_1 AS
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees AS e
	INNER JOIN salaries AS s
		ON (e.emp_no = s.emp_no)
ORDER BY s.salary DESC;

-- Query 2: List the first name, last name, and hire date for the employees who were hired in 1986.
-- Selecting from employees table. Using Where & And function for hire_date
CREATE VIEW query_2 AS
SELECT first_name,
	last_name,
	hire_date
FROM employees
WHERE hire_date > '1986-01-01'
	AND hire_date < '1986-12-31'
ORDER BY hire_date;

-- Query 3: List the manager of each department along with their department number, department name, employee number, last name, and first name.
-- Selecting from departments, dept_manager, & employees tables. Using Join function
CREATE VIEW query_3 AS
SELECT m.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager AS m
	INNER JOIN departments AS d
		ON (m.dept_no = d.dept_no)
	INNER JOIN employees AS e
		ON (m.emp_no = e.emp_no)
ORDER BY d.dept_name, e.last_name;

-- Query 4: List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- Selecting from dept_emp, employees, & departments tables. Using Join function
CREATE VIEW query_4 AS
SELECT s.dept_no,
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp AS s
	INNER JOIN departments AS d
		ON (s.dept_no = d.dept_no)
	INNER JOIN employees AS e
		ON (s.emp_no = e.emp_no)
ORDER BY s.dept_no, e.last_name;

-- Query 5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
-- Selecting from employees table. Using Where, AND, & Like(applying wildcard - %) functions
CREATE VIEW query_5 AS
SELECT first_name,
	last_name,
	sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'
ORDER BY last_name;

-- Query 6: List each employee in the Sales department, including their employee number, last name, and first name.
-- Selecting from  employees, departments, dept_emp tables. Using Join & Where functions
CREATE VIEW query_6 AS
SELECT d.dept_name,
	s.emp_no,
	e.last_name,
	e.first_name
FROM dept_emp AS s
	INNER JOIN departments AS d
		ON (s.dept_no = d.dept_no)
	INNER JOIN employees AS e
		ON (s.emp_no = e.emp_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.last_name;

-- Query 7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- Selecting from employees, departments, dept_emp tables. Using Join & Where with IN functions
CREATE VIEW query_7 AS
SELECT s.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp AS s
	INNER JOIN departments AS d
		ON (s.dept_no = d.dept_no)
	INNER JOIN employees AS e
		ON (s.emp_no = e.emp_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.last_name;

-- Query 8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
-- Selecting from employees table. Using Count then Group By functions
CREATE VIEW query_8 AS
SELECT last_name,
	COUNT(last_name) AS surname_count
FROM employees
GROUP BY last_name
ORDER BY surname_count DESC;
