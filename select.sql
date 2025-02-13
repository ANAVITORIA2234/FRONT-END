USE employees;

SELECT * FROM employees.salaries;

-- min
SELECT MIN(salary) FROM salaries;
-- min raiz
SELECT salary FROM salaries ORDER BY salary ASC LIMIT 1;

-- SUM
SELECT SUM(salary) FROM salaries;

-- max
SELECT MAX(salary) AS maior_salario FROM salaries;
-- min raiz
SELECT salary FROM salaries ORDER BY salary ASC LIMIT 1;

-- count
SELECT COUNT(*) FROM salaries;
SELECT COUNT(*) FROM employees WHERE gender = "F";
SELECT COUNT(*) FROM employees WHERE emp_no = "10002";

-- like (* pesquisar)
-- termo% -> desconsidera final
SELECT * FROM employees WHERE first_name LIKE "Geo%";
-- %termo -> desconsidera começo
SELECT * FROM employees WHERE first_name LIKE "%or";
-- %termo% -> desconsidera começo e fim
SELECT * FROM employees WHERE first_name LIKE "%ni%";

-- In
SELECT * FROM employees WHERE last_name IN ("Kalloufi","Genin");

-- Between
SELECT * FROM salaries WHERE salary BETWEEN '40000'AND '50000';