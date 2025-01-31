insert into person_visits (id, person_id, pizzeria_id, visit_date) values (
    (select coalesce(max(id), 0) + 1 from person_visits),
    (select id from person where name = 'Dmitriy'),
    (select id from pizzeria where name = 'Best Pizza'),
    '2022-01-08'
);

insert into person_order (id, person_id, menu_id, order_date) values (
    (select coalesce(max(id), 0) + 1 from person_order),
    (select id from person where name = 'Dmitriy'),
    (select id from menu where pizza_name = 'cheese pizza' limit 1),
    '2022-01-08'
);

refresh materialized view mv_dmitriy_visits_and_eats;