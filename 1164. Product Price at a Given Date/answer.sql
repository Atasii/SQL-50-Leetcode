-- Write your MySQL query statement below
select q.product_id, ifnull(new_price,10) as price
from (select distinct product_id from Products) q
left join 
(select product_id,new_price,rnk
from
(select product_id,new_price,
rank() over(partition by product_id order by datediff('2019-08-16',change_date) asc) as rnk
from Products 
where change_date <= '2019-08-16'
order by product_id asc) t 
where rnk = 1) p 
on q.product_id = p.product_id