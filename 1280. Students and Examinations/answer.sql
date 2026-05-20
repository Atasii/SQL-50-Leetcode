-- Write your MySQL query statement below
select s.student_id,s.student_name,s.subject_name,ifnull(attended_exams,0) as attended_exams
from 
(select * from
Students cross join Subjects) s
left join
(select student_id,subject_name,count(*) as attended_exams
from Examinations 
group by student_id,subject_name) t
on s.student_id = t.student_id and s.subject_name = t.subject_name
order by student_id asc,subject_name asc