-- Create homework tables while importing CSVs

-- Department
CREATE TABLE Department (dept_no varchar NOT NULL, dept_name varchar NOT NULL,
PRIMARY KEY (dept_no),
UNIQUE (dept_name));

--select * from department

-- Employees
CREATE TABLE Employees (emp_no int NOT NULL, emp_title_id varchar NOT NULL, birth_date varchar NOT NULL, first_name varchar NOT NULL, last_name varchar NOT NULL, sex varchar NOT NULL, hire_date varchar NOT NULL, 
PRIMARY KEY (emp_no));

--select * from employees

-- Department Manager
CREATE TABLE Department_Manager (dept_no varchar NOT NULL, emp_no int NOT NULL,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),  
FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
PRIMARY KEY (emp_no,dept_no));

-- select * from department_manager

-- Department Employees
CREATE TABLE Department_Employee (emp_no int NOT NULL, dept_no varchar NOT NULL,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
PRIMARY KEY (emp_no,dept_no));

-- select * from department_employee

-- Salary
CREATE TABLE Salaries (emp_no int NOT NULL, salary int NOT NULL,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
PRIMARY KEY (emp_no));

-- select * from salaries

-- Titles
CREATE TABLE titles (title_id varchar NOT NULL, title varchar NOT NULL,
CONSTRAINT pk_titles 
PRIMARY KEY (title_id));

-- select * from titles
