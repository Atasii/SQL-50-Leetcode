-- Write your MySQL query statement below
select round(sum(order_date = customer_pref_delivery_date)*100/count(customer_id),2) as immediate_percentage
from 
(select *,
row_number() over(partition by customer_id order by order_date) as rn 
from Delivery) t where rn = 1 