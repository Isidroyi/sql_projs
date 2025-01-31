create view v_price_with_discount as
select person.name, pizza_name, price, round(price - price * 0.1, 0) as discount_price from person_order
join person on person_id = person.id
join menu on menu.id = menu_id
order by person.name, pizza_name;