-- Session#1
begin transaction isolation level repeatable read; -- переходим в transaction mode-- Session#2
begin transaction isolation level repeatable read; -- переходим в transaction mode-- Session#2

-- Session#1
select sum(rating) from pizzeria;
-- Session#2
select sum(rating) from pizzeria;

-- Session#2
update pizzeria set rating = 5 where name = 'Pizza Hut'; --обновляем рейтинг
commit; -- фиксируем изменения  

-- Session#1
select sum(rating) from pizzeria;
commit; -- фиксируем изменения 
select sum(rating) from pizzeria;

-- Session#2
select sum(rating) from pizzeria;
