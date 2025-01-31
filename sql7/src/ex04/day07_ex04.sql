select name, count(visit_date) as count_of_visits from person_visits 
join person on person.id = person_id
group by name 
having count(visit_date) > 3;