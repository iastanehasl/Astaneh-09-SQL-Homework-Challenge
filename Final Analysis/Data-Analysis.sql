-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex, 
salaries.salary
FROM Employees
INNER JOIN Salaries ON
Salaries.emp_no = Employees.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date like '%1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT Department.dept_no, 
Department.dept_name, 
Department_Manager.emp_no, 
Employees.last_name,
Employees.first_name 
FROM Department
INNER JOIN Department_Manager ON
Department_Manager.dept_no = Department.dept_no
INNER JOIN Employees ON 
Employees.emp_no = Department_Manager.emp_no; 

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT Employees.emp_no,
Employees.last_name,
Employees.first_name, 
Department.dept_name
FROM Employees
INNER JOIN Department_Employee ON
Department_Employee.emp_no = Employees.emp_no
INNER JOIN Department ON 
Department_Employee.dept_no = Department.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT Employees.emp_no,
Employees.last_name,
Employees.first_name, 
Department.dept_name
FROM Employees
INNER JOIN Department_Employee ON
Department_Employee.emp_no = Employees.emp_no
INNER JOIN Department ON 
Department_Employee.dept_no = Department.dept_no
WHERE Department.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT Employees.emp_no,
Employees.last_name,
Employees.first_name, 
Department.dept_name
FROM Employees
INNER JOIN Department_Employee ON
Department_Employee.emp_no = Employees.emp_no
INNER JOIN Department ON 
Department_Employee.dept_no = Department.dept_no
WHERE Department.dept_name = 'Development' OR Department.dept_name = 'Sales'

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) as "name count"
FROM Employees
GROUP BY last_name
ORDER BY "name count" DESC;