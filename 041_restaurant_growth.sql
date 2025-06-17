# Write your MySQL query statement below
select visited_on, sum(daily_amount) as amount, round(sum(daily_amount) * 1.0 / 7, 2) as average_amount
from (
    select d.visited_on, t.daily_amount
    from (select distinct visited_on from customer) as d
    inner join (
        select visited_on, sum(amount) as daily_amount
        from customer
        group by visited_on
    ) as t
    on t.visited_on between date_sub(d.visited_on, interval 6 day) and d.visited_on
) as temp
group by visited_on
having count(*) = 7
order by visited_on;
