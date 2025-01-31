select pizza_name, price, pizzeria.name as pizzeria_name, visit_date
from person_visits
join person on person.id = person_visits.person_id
join pizzeria on pizzeria.id = person_visits.pizzeria_id
join menu on pizzeria.id = menu.pizzeria_id
where person.name = 'Kate' and price between 800 and 1000
order by pizza_name, price, pizzeria_name;