insert into person_order (id, person_id, menu_id, order_date)
select ((select max(id) from person_order) + gs), (gs),(select id from menu where pizza_name = 'greek pizza'), ('2022-02-25')
from generate_series((select min(id) from person), (select max(id) from person)) as gs
