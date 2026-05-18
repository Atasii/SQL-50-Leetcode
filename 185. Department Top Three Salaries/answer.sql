select Department,Employee, Salary
from 
(select d.name as Department, d.id as depart_id,e.name as Employee, salary as Salary,
dense_rank() over(partition by d.name order by salary desc) as rnk
from Employee e join Department d on e.departmentId = d.id) t
where rnk <= 3