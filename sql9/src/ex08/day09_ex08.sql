-- Создание функции fnc_fibonacci с параметром pstop по умолчанию 10
CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop integer DEFAULT 10) RETURNS TABLE (number integer) AS $$
DECLARE 
    fib1 integer;
    fib2 integer;
BEGIN
    -- инициализация первого и второго числа фибоначчи
    fib1 := 0;
    fib2 := 1;
    number := 0;
        RETURN NEXT;
     number := 1;
        RETURN NEXT;
    WHILE number < pstop LOOP
        number := fib1 + fib2;
        fib1 := fib2;
        fib2 := number;
        if number < pstop THEN 
            RETURN NEXT;
        END IF;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

-- Проверка функции с параметром 100 и параметром по умолчанию 
select * from fnc_fibonacci(100);
select * from fnc_fibonacci();