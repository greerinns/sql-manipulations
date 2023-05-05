-- 1. List the employee number, last name, first name, sex, 
-- and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM "Employees" e
INNER JOIN "Salaries" s
ON e.emp_no = s.emp_no;

-- 2. List the first name, last name, and hire date 
-- for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE hire_date LIKE '%/1986';

-- 3. List the manager of each department along with their 
-- department number, department name, employee number, 
-- last name, and first name.

-- need to merge employees + dept mgr + departments

SELECT de.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM "Dept_Manager" dm 
INNER JOIN "Employees" e
ON dm.emp_no = e.emp_no
-- this gets us all the employees that are dept managers
INNER JOIN "Dept_Emp" de
ON e.emp_no = de.emp_no
INNER JOIN "Departments" d
ON de.dept_no = d.dept_no;
-- converting emp_no to dept_no to get dept_name requires 2 more joins

-- 4. List the department number for each employee 
-- along with that employee’s employee number, last name,
-- first name, and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" e
INNER JOIN "Dept_Emp" de
ON e.emp_no = de.emp_no
INNER JOIN "Departments" d
ON de.dept_no = d.dept_no;
-- needed 2nd join to get the department name from the number

-- 5. List first name, last name, and sex of each employee whose 
-- first name is Hercules and whose last name begins 
-- with the letter B.

SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, 
-- including their employee number, last name, and first name.

-- This will require 2 subqueries
SELECT emp_no, last_name, first_name
FROM "Employees"
WHERE emp_no IN
(
	SELECT emp_no
	FROM "Dept_Emp"
	WHERE dept_no IN
		(
		SELECT dept_no
		FROM "Departments"
		WHERE dept_name = 'Sales'	
		)
);

-- 7. List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, 
-- and department name.

-- Returning the dept name requires join rather than subquery
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" e
INNER JOIN "Dept_Emp" de
ON e.emp_no = de.emp_no
INNER JOIN "Departments" d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- 8. List the frequency counts, in descending order, 
-- of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS "frequency_counts"
FROM "Employees"
GROUP BY last_name
ORDER BY "frequency_counts" DESC;