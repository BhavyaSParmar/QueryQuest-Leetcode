# Write your MySQL query statement below
with queue_ord as (
select person_name, weight, turn,
sum(weight) over (order by turn) as total_weight
from queue
)

select person_name from queue_ord
where total_weight <= 1000
order by turn desc
limit 1 