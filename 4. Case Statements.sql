-- Case Statement

select first_name,
last_name,
case
when age<=30 then 'YOUNG'
when age between 31 and 50 then 'OLD'
when age>=50 then "On death's door"
end as Age_bracket
from employee_demographics;


-- Pay increase and Bonus
-- <50000 = 5%
-- >50000 = 7%
-- finance = 10% bonus

select first_name,last_name,salary,
case
	when salary<50000 then (salary*1.05)
    when salary>50000 then (salary*1.07)
end as New_Salary,
case
	when dept_id=6 then salary*0.10
end as Bonus
from employee_salary;

select*
from employee_salary;
select*
from parks_departments;