--Session #1
BEGIN;  -- переходим в transaction mode
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';  -- обновляем рейтинг
SELECT * FROM pizzeria; -- проверяем изменения

--Session #2
SELECT * FROM pizzeria; --проверяем наличие изменений во второй сессии, их не будет

--Session #1
COMMIT; -- фиксируем изменения

--Session #2
SELECT * FROM pizzeria; --снова проверяем сессию два, теперь таблица изменилась