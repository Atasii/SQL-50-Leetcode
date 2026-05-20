select round(count(*)/(select count(distinct player_id) from Activity),2) as fraction
from (select player_id,event_date,rn,
lead(event_date) over(partition by player_id order by event_date asc) as n_date
from
(select player_id,event_date,
row_number() over (partition by player_id order by event_date asc) as rn
from Activity) as temp) as t
where rn = 1 and datediff(n_date,event_date) = 1