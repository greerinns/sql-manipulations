# sql-challenge

## Previewing

The jupyter notebook in this repository is used to preview the CSV tables stored in the data directory and draw out the DBD stored in this repository as a PNG, and also to ensure all PK designated columns are indeed unique.

## Schema/Table Creation

The content in schema.sql is a schema definition for a database with six tables: Titles, Salaries, Employees, Dept_Emp, Dept_Manager, and Departments. Each table has a set of columns with their data types and constraints. Primary keys are defined for each table, and foreign keys may be inferred from the table definitions. The schema suggests that this database may be used to store information about employees, their job titles, departments, and salaries. The data for those tables is then imported from the CSV files in the data directory.

## Data Analysis

The SQL code provided under data_analysis.sql is a collection of queries that can be used to analyze an employee database. Each query has a specific purpose, and is designed to extract information or insights from the database.

List the employee number, last name, first name, sex, and salary of each employee.
This query combines information from two tables, "Employees" and "Salaries", to create a list of employee information that includes their employee number, last name, first name, sex, and salary. The INNER JOIN clause is used to match employee records in the two tables based on their employee number.

List the first name, last name, and hire date for the employees who were hired in 1986.
This query uses the WHERE clause to filter employee records based on the year they were hired. The LIKE operator is used to match hire dates that contain the string "/1986". The result is a list of employees hired in 1986, along with their first name, last name, and hire date.

List the manager of each department along with their department number, department name, employee number, last name, and first name.
This query requires a more complex join between multiple tables to link employee and department manager information. The INNER JOIN clause is used to link the "Dept_Manager" and "Employees" tables based on the employee number. A second INNER JOIN is then used to link the resulting records to the "Departments" table based on the department number. The result is a list of department managers, along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
This query also requires a join between multiple tables to link employee and department information. The INNER JOIN clause is used to link the "Employees" and "Dept_Emp" tables based on the employee number. A second INNER JOIN is then used to link the resulting records to the "Departments" table based on the department number. The result is a list of employees, along with their employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
This query uses the WHERE clause to filter employee records based on first name and last name. The result is a list of employees whose first name is "Hercules" and whose last name starts with the letter "B".

List each employee in the Sales department, including their employee number, last name, and first name.
This query requires a subquery to first find all the employee numbers associated with the Sales department, and then use these to filter the employee table. The result is a list of employees in the Sales department, along with their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
This query is similar to the previous one, but requires a join between multiple tables to link employee and department information. The INNER JOIN clause is used to link the "Employees" and "Dept_Emp" tables based on the employee number. A second INNER JOIN is then used to link the resulting records to the "Departments" table based on the department number. The result is a list of employees in the Sales and Development departments, along with their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
This query uses the GROUP BY clause to group employee records based on last





