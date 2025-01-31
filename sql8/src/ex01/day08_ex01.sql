show transaction isolation level;

-- Session#1
begin; -- переходим в transaction mode
-- Session#2
begin; -- переходим в transaction mode

-- Session#
select * from pizzeria where name = 'Pizza Hut';
-- Session#2
select * from pizzeria where name = 'Pizza Hut';

-- Session#1
update pizzeria set rating = 4 where name = 'Pizza Hut'; --обновляем рейтинг
-- Session#2
update pizzeria set rating = 3.6 where name = 'Pizza Hut'; --обновляем рейтинг

-- Session#1
commit;--фиксируем изменения
-- Session#2
commit;--фиксируем изменения

-- Session#1
select * from pizzeria where name = 'Pizza Hut'; --выводим результат, рейтинг - 3.6
-- Session#2
select * from pizzeria where name = 'Pizza Hut'; --выводим результат, рейтинг - 3.6

