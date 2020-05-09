--List the following details of each employee: 
--employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, 
employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no = employees.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, 
employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, 
employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no;

--List first name, last name, and sex for employees whose first name 
--is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, 
employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, 
employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC

--lol
SELECT * FROM employees
WHERE emp_no = 499942;