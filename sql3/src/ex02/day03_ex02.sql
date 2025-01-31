select pizza_name, price, pizzeria.name as pizzeria_name
from menu
join pizzeria on pizzeria.id = menu.pizzeria_id
except
select menu.pizza_name, menu.price, pizzeria.name as pizzeria_name
from person_order
join menu on menu.id = person_order.menu_id
join pizzeria on pizzeria.id = menu.pizzeria_id
order by pizza_name, price;
