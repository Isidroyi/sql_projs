select p.name, m.pizza_name, m.price, round(m.price - (m.price * pd.discount / 100)) as discount_price, piz.name as pizzeria_name
from person_order as po
join menu as m on po.menu_id = m.id
join person_discounts as pd on po.person_id = pd.person_id and m.pizzeria_id = pd.pizzeria_id
join person as p on pd.person_id = p.id
join pizzeria as piz on pd.pizzeria_id = piz.id
order by 1, 2;