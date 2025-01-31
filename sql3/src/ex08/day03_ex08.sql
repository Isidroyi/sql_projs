insert into menu (id, pizzeria_id, pizza_name, price) values ((select max(id) + 1 from menu), (SELECT pizzeria.id FROM pizzeria WHERE name = 'Dominos'), 'sicilian pizza', 900);
