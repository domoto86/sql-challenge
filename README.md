# SQL Challenge

## Data Modeling
![ERD_Image](https://user-images.githubusercontent.com/122246053/233497548-7839c967-be31-4185-8adc-c5750e299cd1.png)

## Data Engineering
[ERD_Detail.pdf](https://github.com/domoto86/sql-challenge/files/11290772/ERD_Detail.pdf)

## Data Analysis
1. SELECT employees.emp_no, last_name, first_name, sex, salary FROM employees</br>
   JOIN salaries ON employees.emp_no = salaries.emp_no;
   
2. SELECT first_name, last_name, hire_date FROM employees </br>
   WHERE EXTRACT(YEAR FROM hire_date) = 1986;

3. SELECT department_manager.dept_no, dept_name, employees.emp_no, last_name, first_name FROM department_manager</br>
   JOIN departments ON departments.dept_no = department_manager.dept_no</br>
   JOIN employees ON department_manager.emp_no = employees.emp_no;</br>
   
4. SELECT department_employee.dept_no, employees.emp_no, last_name, first_name, dept_no FROM department_employee</br>
   JOIN employees ON department_employee.emp_no = employees.emp_no;

5. SELECT first_name, last_name, sex FROM employees
   WHERE first_name = 'Hercules' AND last_name Like 'B%';</br>

6. SELECT emp_no, last_name, first_name FROM employees</br>
   WHERE emp_no IN (</br>
      SELECT emp_no FROM department_employee</br>
      WHERE dept_no = 'd007'</br>
      );
    
7. SELECT employees.emp_no, last_name, first_name, dept_name FROM employees</br>
   JOIN department_employee ON employees.emp_no = department_employee.emp_no</br>
   JOIN departments ON department_employee.dept_no = departments.dept_no</br>
   WHERE departments.dept_no = 'd007' OR departments.dept_no = 'd005';

8. SELECT last_name, COUNT(last_name) AS last_name_count FROM employees</br>
   GROUP BY last_name</br>
   ORDER BY last_name_count DESC;
