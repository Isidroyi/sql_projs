select name, menu.pizza_name as pizza from person
join person_order
on person_order.person_id = person.id
join menu
on menu.id = person_order.menu_id
where person.gender = 'female' 
	and person.id in (select person_id from person_order
						join menu
						on menu.id = person_order.menu_id
						where menu.pizza_name = 'pepperoni pizza') 
	and person.id in (select person_id from person_order
						join menu
						on menu.id = person_order.menu_id
						where menu.pizza_name = 'cheese pizza')
order by name; 