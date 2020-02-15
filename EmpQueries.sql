SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender,salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

Select first_name, last_name, hire_date
from employees
WHERE hire_date between '1986-01-01' and '1986-12-31'
ORDER BY last_name;

Select dm.dept_no, d.dept_name, dm.emp_no,e.last_name,e.first_name,dm.from_date,dm.to_date
from departments d
INNER JOIN dept_manager dm ON
dm.dept_no = d.dept_no
INNER JOIN employees e ON
dm.emp_no = e.emp_no

SELECT de.emp_no, e.last_name, e.first_name,d.dept_name
from departments d
INNER JOIN dept_emp de ON
de.dept_no = d.dept_no
INNER JOIN employees e ON
de.emp_no = e.emp_no

SELECT e.first_name, e.last_name from employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%'

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
INNER JOIN dept_emp de ON
de.emp_no = e.emp_no
INNER JOIN departments d ON
de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
INNER JOIN dept_emp de ON
de.emp_no = e.emp_no
INNER JOIN departments d ON
de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

SELECT COUNT(e.last_name) AS "Count Last Names", e.last_name 
from employees e
GROUP BY e.last_name
ORDER BY "Count Last Names" DESC