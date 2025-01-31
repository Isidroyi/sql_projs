with recursive tour(passed, last_node, total_cost) as (select concat(point1, ',', point2), point2, cost from nodes as n where point1 = 'a'
union all
select concat(tour.passed, ',', n.point2), n.point2, tour.total_cost + n.cost from tour 
join nodes as n
on tour.last_node = n.point1 
where (position(n.point2 in tour.passed) = 0) or (length(tour.passed) = 7 and position(n.point2 in tour.passed) = 1)),
t as (select * from tour where length(tour.passed) = 9)

select total_cost, concat('{', passed, '}') as tour from t
where total_cost = (select min(total_cost) from t) or total_cost = (select max(total_cost) from t)
order by total_cost, tour;