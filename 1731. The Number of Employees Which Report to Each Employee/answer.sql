-- Write your MySQL query statement below
select t.reports_to as employee_id,name,reports_count,average_age from
(select reports_to,count(employee_id) as reports_count,round(avg(age),0) as average_age from Employees
where reports_to is not null
group by reports_to) t
left join Employees e on t.reports_to = e.employee_id order by t.reports_to asc