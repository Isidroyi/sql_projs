select coalesce(t.name, '-') as person_name,
t.visit_date, coalesce(pizzeria.name, '-') as pizzeria_name from (select person.name, visit_date, pizzeria_id from person
left join (select person_id, visit_date, pizzeria_id from person_visits
where visit_date between '2022-01-01' and '2022-01-03') pv
on person.id = pv.person_id) as t
full join pizzeria
on pizzeria.id = t.pizzeria_id
order by person_name, t.visit_date, pizzeria_id;