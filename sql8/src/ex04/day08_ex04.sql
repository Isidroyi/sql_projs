-- Session#1
begin transaction isolation level serializable; -- переходим в transaction mode
-- Session#2
begin transaction isolation level serializable; -- переходим в transaction mode

-- Session#1
select * from pizzeria where name = 'Pizza Hut';
-- Session#2
select * from pizzeria where name = 'Pizza Hut';

-- Session#2
update pizzeria set rating = 3.0 where name = 'Pizza Hut'; --обновляем рейтинг
commit; -- фиксируем изменения 

-- Session#1
select * from pizzeria where name = 'Pizza Hut';
commit; -- фиксируем изменения
select * from pizzeria where name = 'Pizza Hut';

-- Session#2
select * from pizzeria where name = 'Pizza Hut';