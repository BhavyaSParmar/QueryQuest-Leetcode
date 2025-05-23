# Write your MySQL query statement below
-- confirmation rate = confirmation count / total confirmation

select s.user_id,
round(sum(if(action='confirmed',1,0))/count(s.user_id),2) as confirmation_rate
from signups s
left join confirmations c on s.user_id=c.user_id
group by user_id