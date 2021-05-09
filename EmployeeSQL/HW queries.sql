--SQL HW Diana Kennen

--1. List the employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

--2. List the first name, last name, and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

--3. List the manager of each department with dept no, dept name, manager's
--employee no, last name, first name
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no
INNER join employees ON
dept_manager.emp_no = employees.emp_no;

--4. List the dept of each employee with employee no, last name, first name,
--and dept name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dep_emp ON
employees.emp_no = dep_emp.emp_no
INNER JOIN departments ON
dep_emp.dept_no = departments.dept_no;

--5. List first name, last name, and sex for employees Hercules B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--6. List all employees in the Sales depts
--emp no, last name, first name, and dept name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dep_emp ON
employees.emp_no = dep_emp.emp_no
INNER JOIN departments ON
dep_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--7. List sales and development dept employees including emp no, last name
--first name, and dept name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dep_emp ON
employees.emp_no = dep_emp.emp_no
INNER JOIN departments ON
dep_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;



