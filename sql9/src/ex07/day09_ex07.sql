-- Создание функции func_minimum
CREATE OR REPLACE FUNCTION func_minimum(arr NUMERIC[])
RETURNS NUMERIC AS $$
DECLARE
    min_value NUMERIC;
    elem NUMERIC;
BEGIN
    -- Инициализация min_value первым элементом массива
    min_value := arr[1];
    
    -- Итерация по всем элементам массива
    FOREACH elem IN ARRAY arr LOOP
        IF elem < min_value THEN
            min_value := elem;
        END IF;
    END LOOP;
    
    -- Возврат минимального значения
    RETURN min_value;
END;
$$ LANGUAGE plpgsql;

-- Проверка функции
SELECT func_minimum(ARRAY[10.0, -1.0, 5.0, 4.4]);
