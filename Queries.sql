--Display tables

SELECT * FROM employees;
SELECT * FROM shops;
SELECT * FROM locations;
SELECT * FROM suppliers;

-----------------
--Where,And, Or--
-----------------

--Display 3 colums of employees table
SELECT employee_id, first_name, last_name FROM employees;

--Display employees that earn over $50k
SELECT * FROM employees WHERE salary>('50000');

--Display employees who work in the common ground shop
SELECT * FROM employees WHERE coffeeshop_id='1';

--Display employees who work in the common ground shop and earn over $50k
SELECT * FROM employees WHERE coffeeshop_id='1' AND salary>('50000');

--Display employees who work in the common ground shop and are male
SELECT * FROM employees WHERE coffeeshop_id='1' AND gender='M';

--Display employees who work in the common ground shop, make more than $50k and are male
SELECT * FROM employees WHERE coffeeshop_id='1'
						OR gender='M'
						OR salary>'50000';

------------------------------------------------
--Order By, Limit, Distinct and rename columns--
------------------------------------------------

--Order by salary - ascending
SELECT employee_id, first_name, last_name, salary FROM employees
ORDER BY salary;

--Order by salary - descending
SELECT employee_id, first_name, last_name, salary FROM employees
ORDER BY salary DESC;

--Top 15 highest paid employees
SELECT employee_id, first_name, last_name, salary FROM employees
ORDER BY salary DESC
LIMIT 15;

--Display all unique shop names
SELECT DISTINCT(coffeeshop_name) FROM shops;

--Rename columns
SELECT 
	email,
	email AS email_address,
	hire_date,
	hire_date AS date_joined,
	salary,
	salary AS pay
FROM employees;

-----------
--Extract--
-----------

--Extract day, month, year from yyyy/mm/dd
SELECT
	hire_date as date,
	EXTRACT(YEAR FROM hire_date) AS year,
	EXTRACT(MONTH FROM hire_date) AS month,
	EXTRACT(DAY FROM hire_date) AS day
FROM employees;


----------------------------
--Upper,lower, length,trim--
----------------------------

--Make first and last name uppercase
SELECT
	first_name,
	UPPER(first_name) AS first_name_upper,
	last_name,
	UPPER(last_name) AS last_name_upper
FROM employees;

--MAke first and last name lowercase
SELECT
	first_name,
	LOWER(last_name) AS last_name_lower,
	last_name,
	LOWER (last_name) AS last_name_lower
FROM employees;

--Display the email and length of email
SELECT
	email,
	LENGTH(email) AS email_length
FROM employees;
	