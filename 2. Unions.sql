-- 	UNIONS

select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary;

select first_name, last_name,'old Man' as label
from employee_demographics
where age>40 and gender='male'
UNION
select first_name, last_name,'old Lady' as label
from employee_demographics
where age>40 AND gender='female'
union all
select first_name, last_name,'Highly paid employee ' as label
from employee_salary
where salary>70000
order by first_name,last_name;