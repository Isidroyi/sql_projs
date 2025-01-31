select pizza_name, p1.name as pizzeria_name_1, 
p2.name as pizzeria_name_2, t.price 
from (select m1.pizza_name, m1.pizzeria_id as pizzeria_id1, m2.pizzeria_id as pizzeria_id2, m1.price
from menu as m1, menu as m2
where m1.price = m2.price and m1.pizza_name = m2.pizza_name and m1.id > m2.id) t
join pizzeria as p1 on p1.id = t.pizzeria_id1
join pizzeria as p2 on p2.id = t.pizzeria_id2
order by pizza_name;