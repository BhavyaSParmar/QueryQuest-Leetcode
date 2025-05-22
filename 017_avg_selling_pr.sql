# Write your MySQL query statement below
select prices.product_id, round(
        ifnull(sum(UnitsSold.units * Prices.price) / sum(UnitsSold.units), 0), 2
    ) as average_price
from Prices
left join 
    UnitsSold 
    on Prices.product_id = UnitsSold.product_id 
    and UnitsSold.purchase_date between Prices.start_date and Prices.end_date
group by Prices.product_id;
