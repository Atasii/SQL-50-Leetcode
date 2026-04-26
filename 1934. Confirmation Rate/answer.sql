-- Write your MySQL query statement below
select s.user_id, round(IFNULL(sum(action = "confirmed"),0)/count(s.user_id),2) as confirmation_rate
from Signups s left join Confirmations c on s.user_id = c.user_id
group by s.user_id order by s.user_id desc;