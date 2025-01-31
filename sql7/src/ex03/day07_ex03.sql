with rest_visits as
(select pizzeria.name, count(visit_date) as count, 'visit' as action_type
from person_visits 
join pizzeria on pizzeria_id = pizzeria.id
group by pizzeria.name),
    rest_orders as
(select pizzeria.name, count(order_date) as count, 'order' as action_type
from person_order 
join menu on menu.id = menu_id
join pizzeria on pizzeria_id = pizzeria.id
group by pizzeria.name)
select rest_visits.name, rest_visits.count + rest_orders.count AS total_count
from rest_visits 
join rest_orders on rest_visits.name = rest_orders.name
order by total_count desc, name asc;