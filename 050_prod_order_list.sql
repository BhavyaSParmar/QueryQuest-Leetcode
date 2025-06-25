# Write your MySQL query statement below
select products.product_name, sum(orders.unit) as unit
from orders
inner join products on orders.product_id = products.product_id
where orders.order_date between '2020-02-01' and '2020-02-29'
group by products.product_name
having sum(orders.unit) >= 100