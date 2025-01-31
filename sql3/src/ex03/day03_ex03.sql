with t as
(select pizzeria.name as pizzeria_name, gender 
from pizzeria
join person_visits as pv on pizzeria.id = pv.pizzeria_id
join person on pv.person_id = person.id)
(select t.pizzeria_name from t
where gender = 'female' 
except all
select t.pizzeria_name from t
where gender = 'male')
union all
(select t.pizzeria_name from t
where gender = 'male' 
except all
select t.pizzeria_name from t
where gender = 'female')
order by pizzeria_name;