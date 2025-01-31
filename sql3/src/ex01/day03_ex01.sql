select id from menu 
except 
select menu_id from person_order
order by id;