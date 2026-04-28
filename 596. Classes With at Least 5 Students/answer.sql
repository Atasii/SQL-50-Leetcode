-- select class
-- from (select class,count(student) as StuNo from Courses group by class) t
-- where StuNo>4

select class
from Courses
group by class
having count(student)>4