insert into person_discounts (id, person_id, pizzeria_id, discount)
select row_number() over () + (select coalesce(max(id), 0) from person_discounts) as id,
    po.person_id,
    m.pizzeria_id,
    case
        when count(po.id) = 1 then 10.5
        when count(po.id) = 2 then 22
        else 30
    end as discount
from person_order po
join menu m on po.menu_id = m.id
group by
    po.person_id,
    m.pizzeria_id;