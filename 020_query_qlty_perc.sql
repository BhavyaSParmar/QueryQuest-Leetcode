# Write your MySQL query statement below
-- avg = rating*1 / position
-- poor query percentage = (rating < 3 then 1 else 0 end) * 100 / count(*), 2)

select query_name, round (avg(rating * 1 / position), 2) as quality,
round(sum(case when rating < 3 then 1 else 0 end) * 100 / count(*), 2) as poor_query_percentage
from queries 
group by query_name