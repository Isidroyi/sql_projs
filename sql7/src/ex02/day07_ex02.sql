(select pizzeria.name, count(visit_date) as count, 'visit' as action_type from person_visits 
join pizzeria on pizzeria_id = pizzeria.id
group by pizzeria.name  
order by  2 desc 
limit 3)
union all
(select pizzeria.name, count(order_date) as count, 'order' as action_type from person_order 
join menu on menu.id = menu_id
join pizzeria on pizzeria_id = pizzeria.id
group by pizzeria.name 
order by  2 desc 
limit 3)
order by action_type, count DESC;