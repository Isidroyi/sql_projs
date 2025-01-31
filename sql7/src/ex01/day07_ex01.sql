select p.name, count(visit_date) as count_of_visits from person_visits
join person as p on p.id = person_visits.person_id
group by p.name
order by count_of_visits desc, p.name asc
limit 4;
