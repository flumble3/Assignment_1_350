/* Problem 1 Solution */
/* Author: Sawyer */
SELECT country_name
FROM countries
WHERE LOWER(country_name) LIKE '%in%';
/* Problem 2 Solution */
/* Author: Sawyer */
SELECT region_id, COUNT(*) AS country_count
FROM countries
GROUP BY region_id;
/* Problem 3 Solution */
/* Author: Sawyer */
SELECT e.first_name, e.last_name
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
WHERE j.job_title LIKE '%Manager%';
/* Problem 4 Solution */
/* Author: Sawyer */
SELECT e.first_name, e.last_name
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE m.first_name = 'Nancy' AND m.last_name = 'Greenberg';
/* Problem 5 Solution */
/* Author: Sawyer */
SELECT e.first_name, e.last_name
FROM employees e
WHERE e.salary > (SELECT salary FROM employees WHERE first_name = 'Luis' AND last_name = 'Popp')
  AND e.salary < (SELECT salary FROM employees WHERE first_name = 'Alexander' AND last_name = 'Hunold');
