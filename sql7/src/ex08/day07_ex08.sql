select address, pizzeria.name, count(order_date) as count_of_orders from person_order 
join person on person.id = person_id 
join menu on menu.id = menu_id 
join pizzeria on pizzeria.id = pizzeria_id
group by address, pizzeria.name
order by address, pizzeria.name;