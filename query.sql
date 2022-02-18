
with t1 as 
	(select
		*,
		case when area >= 3000000 or population >= 25000000 then 1 else 0 end as Big_country
	from world)
select *
from t1
where big_country = 1