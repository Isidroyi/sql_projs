select menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name
from person_order 
join menu on menu.id = person_order.menu_id
join pizzeria on pizzeria.id = menu.pizzeria_id
join person on person.id = person_order.person_id
where person.name = 'Denis' or person.name = 'Anna'
order by pizza_name, pizzeria_name;