-- item 1
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, salary.salary
FROM employees AS emp
 LEFT JOIN salaries AS salary
 ON emp.emp_no=salary.emp_no;

-- item 2
SELECT * FROM employees;

ALTER TABLE employees ALTER COLUMN hire_date TYPE DATE
USING TO_DATE(hire_date, 'YYYY-MM-DD');

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- item 3
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
 INNER JOIN departments AS d
  ON dm.dept_no=d.dept_no
 INNER JOIN employees AS e
  ON dm.emp_no=e.emp_no;
  
-- item 4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
 INNER JOIN dept_emp AS de
  ON e.emp_no=de.emp_no
 INNER JOIN departments AS d
  ON de.dept_no=d.dept_no;

-- item 5
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE'B%';

-- item 6 d007 Sales
SELECT e. emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
 INNER JOIN dept_emp AS de
  ON e.emp_no=de.emp_no
 INNER JOIN departments AS d
  ON de.dept_no=d.dept_no
WHERE d.dept_no = 'd007';


-- item 7 d005, d007
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
  INNER JOIN dept_emp as de
   ON e.emp_no=de.emp_no
  INNER JOIN departments as d
   ON de.dept_no=d.dept_no
WHERE d.dept_no = 'd005' OR d.dept_no = 'd007';
  
-- item 8
SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

