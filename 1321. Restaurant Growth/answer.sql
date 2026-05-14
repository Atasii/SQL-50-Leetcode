-- Write your MySQL query statement below
select visited_on,total_amount as amount, average_amount
from
(select *, 
round(avg(amount) over(order by visited_on asc rows between 6 preceding and current row),2)
as average_amount,
sum(amount) over(order by visited_on asc rows between 6 preceding and current row)
as total_amount,
count(*) over(order by visited_on rows between 6 preceding and current row)
as cnt
from 
(select visited_on, sum(amount) as amount
from Customer group by visited_on order by visited_on asc) as t
) as temp
where cnt = 7;
