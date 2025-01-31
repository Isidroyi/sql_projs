with t as
(select pizzeria.name as pizzeria_name, gender 
from person
join person_order as po on person.id = po.person_id
join menu on menu.id = po.menu_id
join pizzeria on pizzeria.id = menu.pizzeria_id)
(select t.pizzeria_name from t
where gender = 'female' 
except 
select t.pizzeria_name from t
where gender = 'male')
union 
(select t.pizzeria_name from t
where gender = 'male' 
except 
select t.pizzeria_name from t
where gender = 'female')
order by pizzeria_name;