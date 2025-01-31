select pizzeria.name as pizzeria_name
from person_visits as pv
join pizzeria on pv.pizzeria_id = pizzeria.id
join person on person.id = pv.person_id
where person.name = 'Andrey'

except

select pizzeria.name as pizzeria_name
from person_order as po
join person on person.id = po.person_id
join menu on menu.id = po.menu_id
join pizzeria on pizzeria.id = menu.pizzeria_id
where person.name = 'Andrey';