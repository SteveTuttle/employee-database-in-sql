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
*/

-- Query 1: List the employee number, last name, first name, sex, and salary of each employee.
-- Selecting from employees and salaries tables, performing Join function
SELECT p.emp_no,
	p.last_name,
	p.first_name,
	p.sex,
	s.salary
FROM employees AS p
	INNER JOIN salaries AS s
		ON (p.emp_no = s.emp_no)
ORDER BY s.salary DESC;

-- Query 2: List the first name, last name, and hire date for the employees who were hired in 1986.
-- Selecting from 
SELECT first_name,
	last_name,
	hire_date

