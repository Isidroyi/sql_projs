set enable_seqscan = off;
explain analyze
select pizza_name, pizzeria.name as pizzeria_name from menu 
join pizzeria on pizzeria.id = pizzeria_id