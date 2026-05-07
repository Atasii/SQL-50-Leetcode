--  Write your MySQL query statement below
select p.category,count(t.category) as accounts_count
from 
(select 'High Salary' as category union select 'Low Salary'
union select 'Average Salary') p left join
(select income,
case 
    when income<20000 then "Low Salary"
    when income >= 20000 AND income <= 50000 then "Average Salary"
    else "High Salary"
end as category  from Accounts) t on p.category = t.category
group by p.category


--  another solution

WITH x AS (
    SELECT 'Low Salary' AS category, COUNT(*) AS accounts_count
    FROM Accounts WHERE income < 20000
    UNION ALL
    SELECT 'Average Salary', COUNT(*)
    FROM Accounts WHERE income >= 20000 AND income <= 50000
    UNION ALL
    SELECT 'High Salary', COUNT(*)
    FROM Accounts WHERE income > 50000
)
SELECT * FROM x;