# Write your MySQL query statement below
select department.name as Department, employee.name as Employee, employee.salary as Salary
from employee
inner join department
on employee.departmentId = department.id
where (
    select count(distinct employee2.salary)
    from employee as employee2
    where employee2.departmentid = employee.departmentid
    and employee2.salary >employee.salary
) < 3