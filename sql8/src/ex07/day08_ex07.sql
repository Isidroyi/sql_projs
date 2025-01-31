-- Session#1
begin isolation level read committed; -- переходим в transaction mode
-- Session#2
begin isolation level read committed; -- переходим в transaction mode

-- Session#1
update pizzeria set rating = 2 where id = 1;
-- Session#2
update pizzeria set rating = 3 where id = 2;

-- Session#1
update pizzeria set rating = 4 where id = 2;
-- Session#2
update pizzeria set rating = 5 where id = 1;

-- Session#1
commit; -- фиксируем изменения 

-- Session#2
commit; -- фиксируем изменения 