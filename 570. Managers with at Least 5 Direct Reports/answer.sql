-- Write your MySQL query statement below
select name from
Employee e left join 
(select managerId,count(managerId) as cnt from Employee group by managerId) x 
on e.id = x.managerId
where cnt >4
