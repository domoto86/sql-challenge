DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS department_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS title;
DROP TABLE IF EXISTS department_employee;

CREATE TABLE employees (
	emp_no integer NOT NULL,
	emp_title_id varchar NOT NULL,
	birth_date date NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	sex varchar,
	hire_date date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
	PRIMARY KEY (emp_no)
);

CREATE TABLE department_manager (
	dept_no varchar,
	emp_no int,
	primary key (dept_no,emp_no)
);

CREATE TABLE departments (
	dept_no varchar,
	dept_name varchar,
	PRIMARY KEY (dept_no)
);

CREATE TABLE salaries (
	emp_no int primary key,
	salary int,
);

CREATE TABLE title (
	title_id varchar primary key,
	title varchar,
);

CREATE TABLE department_employee (
	emp_no int,
	dept_no varchar,
);
