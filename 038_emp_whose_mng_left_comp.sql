# Write your MySQL query statement below
select employees.employee_id from employees
left join employees as managers
on employees.manager_id = managers.employee_id
where employees.salary < 30000
and managers.employee_id is null
order by employee_id;
