/*Problem 10 Solution*/
/*Author Jared*/
select count(e.employee_id) as it_employee_paid_more
from employees e
join departments d on e.department_id = d.department_id
where d.department_name = 'IT'
and e.salary > (
	select max(mgr.salary)
	from employees mgr
	join departments d2 on mgr.department_id = d2.department_id
	join jobs j on mgr.job_id = j.job_id
	where j.job_title like '%Manager%' and d2.department_name = 'Shipping'
)

/*Problem 11 Solution*/
/*Author Jared*/
SELECT e.employee_id, e.first_name, e.last_name
FROM employees e
except
SELECT e1.employee_id, e1.first_name, e1.last_name
FROM employees e1
JOIN employees m ON e1.manager_id = m.employee_id
WHERE m.first_name = 'Nancy' AND m.last_name = 'Greenberg';

/*Problem 12 Solution*/
/*Author Jared*/
SELECT employee_id, last_name, salary
FROM employees
WHERE salary > 9000
UNION
SELECT employee_id, last_name, salary
FROM employees, countries
where country_name = 'Germany'

/*Problem 13 Solution*/
/*Author Jared*/
SELECT country_name
FROM countries
WHERE region_id = 4
INTERSECT
SELECT country_name
FROM countries
where country_name like 'Z%'