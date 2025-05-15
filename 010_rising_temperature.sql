# Write your MySQL query statement below

select curr.id as Id
from weather curr
join weather prev
on datediff (curr.recordDate, prev.recordDate) = 1
where curr.temperature > prev.temperature     
