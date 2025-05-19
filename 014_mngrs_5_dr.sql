# Write your MySQL query statement below
select employee.name
from employee
inner join
(
    select managerid
    from employee
    where managerid is not null
    group by managerid
    having count(*) >= 5
) as managerscount
on employee.id = managerscount.managerid