
CREATE table departments (
	dept_no VARCHAR(30) NOT NULL,
  	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

Select * from departments


CREATE table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	CONSTRAINT PK_dept_emp PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

Select * from dept_emp

CREATE table dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

Select * from dept_manager

CREATE table employees (
	emp_no INT NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	gender VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
 );

Select * from employees 

CREATE table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	CONSTRAINT PK_salaries PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

Select * from salaries

CREATE table titles (
	emp_no INT NOT NULL,
	title VARCHAR(30) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	CONSTRAINT PK_titles PRIMARY KEY (emp_no,from_date),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

Select * from titles
