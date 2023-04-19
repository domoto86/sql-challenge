DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS department_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS title;
DROP TABLE IF EXISTS department_employee;

CREATE TABLE employees (
	emp_no integer primary key,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
);

CREATE TABLE department_manager (
	dept_no varchar,
	emp_no int,
);

CREATE TABLE departments (
	dept_no varchar primary key,
	dept_name varchar,
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
