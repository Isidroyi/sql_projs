select pizzeria.name, count(order_date) as count_of_orders, round(avg(price), 2) as average_price, max(price) as max_price, min(price) as min_price from person_order 
join menu on menu.id = menu_id 
join pizzeria on pizzeria.id = pizzeria_id
group by pizzeria.name order by pizzeria.name;