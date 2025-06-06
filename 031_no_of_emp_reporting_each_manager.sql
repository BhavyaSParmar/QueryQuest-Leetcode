# Write your MySQL query statement below
select employees.employee_id, employees.name, count(reports.employee_id) as reports_count, round(avg(reports.age)) as average_age
from employees
inner join employees as reports
on employees.employee_id = reports.reports_to
group by employees.employee_id, employees.name
order by employee_id asc