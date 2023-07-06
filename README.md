# sql_challenge
UNC_data_bootcamp_module_9

## Challenge Description
### Background
> It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

***from the UNC Bootcamp instructions for this challenge***

## Deliverables
The goal for this challenge is to perform data modeling, data engineering, and data analysis using data imported from the CSV files, then answering questions about the data. With that, this challenge is divided into three parts:
1. Create an Entity Relationship Diagram based on the tables the CSV files. This will provide a layout for the employee database.
2. Create an employee database schema sql using the original six CSV files as foundations for each table.
3. Create a queries sql file based on a series of questions asked in this challenge using data from the schema tables.

We are using pgAdmin working with postgreSQL to complete this challenge.

### Part-1: Data Modeling - Entity Relationship Diagram (ERD)
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. After reviewing and mapping out each CSV file, using the ERD Tool in pgADmin provided me the most efficient way to display the ERD for this challenge.

__employee database ERD:__
![employee_db_erd](https://github.com/SteveTuttle/sql_challenge/tree/main/EmployeeSQL#:~:text=PH%2D-,ERD_employee_db,-.png)

### Part-2: Data Engineering - Schema SQL
1. We will use the information provided from the six CSV files to create a table Schema.
Based on the data from the CSV files used to create the initial Entity Relationship Diagram,
we determined the following is the most efficient sequence to load the data into the SQL database:
	1. titles 
	2. employees 
	3. departments 
	4. dept_emp 
	5. dept_manager 
	6. salaries 
2. We will import each CSV file into its corresponding SQL table using the import function in pgAdmin.

### Part-3: Data Analysis - Queries SQL
Here we were ask a series of questions based on the data from the schema tables:
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Resources
### Bootcamp References
Module 9 Instructions

Starter CSV files
* titles.csv
* employees.csv
* departments.csv
* dept_emp.csv
* dept_manager.csv
* salaries.csv

***Special Thanks:***
* Jamie Miller
* Mounika Mamindla
* Lisa Shemanciik

### External References
_(where possible will provide link to website)_
[PostgreSQL Cheatsheet](https://unc.bootcampcontent.com/UNC-Coding-Boot-Camp/UNC-VIRT-DATA-PT-03-2023-U-LOLC/-/blob/main/09-SQL/Supplemental/PostgreSQL-Cheat-Sheet.pdf)
[SQL Reference Guide](https://unc.bootcampcontent.com/UNC-Coding-Boot-Camp/UNC-VIRT-DATA-PT-03-2023-U-LOLC/-/blob/main/09-SQL/Supplemental/SQL_reference_guide.pdf)
YouTube (various sources)


