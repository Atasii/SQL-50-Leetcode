delete from person
where id in (
select id from (select *,
row_number() over(partition by email order by id asc) as rn
from Person
)as t where rn!=1
) 