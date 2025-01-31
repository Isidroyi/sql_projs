-- Создание функции fnc_persons_female
CREATE OR REPLACE FUNCTION fnc_persons_female()
RETURNS TABLE (id INT, name VARCHAR, age INT, gender VARCHAR, address VARCHAR) AS $$
SELECT id, name, age, gender, address
FROM person
WHERE gender = 'female';
$$ LANGUAGE sql;

-- Создание функции fnc_persons_male
CREATE OR REPLACE FUNCTION fnc_persons_male()
RETURNS TABLE (id INT, name VARCHAR, age INT, gender VARCHAR, address VARCHAR) AS $$
SELECT id, name, age, gender, address
FROM person
WHERE gender = 'male';
$$ LANGUAGE sql;

-- Проверка функций
SELECT * FROM fnc_persons_male();
SELECT * FROM fnc_persons_female();
