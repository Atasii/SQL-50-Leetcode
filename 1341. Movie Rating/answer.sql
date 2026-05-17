# Write your MySQL query statement below
(select u.name as results
from Users u join MovieRating m on u.user_id = m.user_id
group by m.user_id,u.name order by count(m.user_id) desc, u.name asc
limit 1)

union all

(select title as results
from Movies m join MovieRating mr on m.movie_id = mr.movie_id
where month(created_at) = 2 and year(created_at) = 2020
group by mr.movie_id, m.title order by avg(mr.rating) desc,m.title asc
limit 1)