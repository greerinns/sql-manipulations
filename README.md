# SQL Database Analysis Project

## Overview

This repository is dedicated to an in-depth analysis of a relational database using SQL. The project is divided into several sections, each serving a distinct purpose in exploring and understanding the data. Below is a structured breakdown of the key aspects of this project:

## 1. Data Preview

The Jupyter notebook provided in this repository serves as an initial exploration of the data. Its primary functions include:
- Previewing the CSV tables stored in the data directory.
- Generating a Database Diagram (DBD) stored as a PNG image.
- Verifying the uniqueness of all primary key (PK) designated columns.

## 2. Schema and Table Creation

The `schema.sql` file contains the schema definition for the database, outlining six tables:
1. Titles
2. Salaries
3. Employees
4. Dept_Emp
5. Dept_Manager
6. Departments

Each table is defined with its respective columns, specifying data types and constraints. Primary keys are explicitly defined for each table, and foreign keys may be inferred from the table definitions. The schema suggests that this database is designed to store comprehensive information about employees, their job titles, departments, and salaries. Data for these tables is then imported from the provided CSV files in the data directory.

## 3. Data Analysis

The `data_analysis.sql` script consists of a collection of SQL queries tailored to analyze the employee database. Each query has a specific purpose, extracting insights and information from the database. Here is an overview of the key queries and their functionalities:

### Query 1
**List the employee number, last name, first name, sex, and salary of each employee.**
- This query combines data from the "Employees" and "Salaries" tables, creating a list of employee information that includes employee number, last name, first name, sex, and salary.
- It employs an INNER JOIN clause to match employee records from both tables based on their employee number.

### Query 2
**List the first name, last name, and hire date for employees hired in 1986.**
- This query filters employee records based on their hire date in the year 1986, using the WHERE clause.
- It utilizes the LIKE operator to match hire dates containing the string "/1986," resulting in a list of employees hired in 1986, including their first name, last name, and hire date.

### Query 3
**List the manager of each department along with their department number, department name, employee number, last name, and first name.**
- This query requires a more complex join operation between multiple tables to link employee and department manager information.
- It employs INNER JOIN clauses to link the "Dept_Manager" and "Employees" tables based on the employee number, and then to link the resulting records to the "Departments" table based on the department number.
- The result is a comprehensive list of department managers, including department number, department name, employee number, last name, and first name.

### Query 4
**List the department number for each employee along with their employee number, last name, first name, and department name.**
- Similar to Query 3, this query requires joining multiple tables to link employee and department information.
- It uses INNER JOIN clauses to connect the "Employees" and "Dept_Emp" tables based on employee number and then links the result to the "Departments" table based on the department number.
- The outcome is a list of employees, including employee number, last name, first name, and department name.

### Query 5
**List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.**
- This query filters employee records based on specific conditions in the WHERE clause.
- It provides a list of employees whose first name is "Hercules" and whose last name starts with the letter "B."

### Query 6
**List each employee in the Sales department, including their employee number, last name, and first name.**
- This query necessitates a subquery to identify all employee numbers associated with the Sales department before filtering the employee table.
- The result is a comprehensive list of employees in the Sales department, along with their employee number, last name, and first name.

### Query 7
**List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.**
- This query is similar to Query 6 but requires a join operation between multiple tables to link employee and department information.
- INNER JOIN clauses are used to connect the "Employees" and "Dept_Emp" tables based on employee number, followed by linking the result to the "Departments" table based on department number.
- The outcome is a list of employees in the Sales and Development departments, including employee number, last name, first name, and department name.

### Query 8
**List the frequency counts, in descending order, of all employee last names (i.e., how many employees share each last name).**
- This query utilizes the GROUP BY clause to group employee records based on last names.

## Conclusion

This structured approach to exploring and analyzing an employee database through SQL queries provides valuable insights and facilitates data-driven decision-making. It showcases the versatility and power of SQL in managing and extracting meaningful information from complex datasets.
