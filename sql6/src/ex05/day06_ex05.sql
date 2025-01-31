comment on table person_discounts is 'Информация по поводу скидок';
comment on column person_discounts.id is 'Идентификатор';
comment on column person_discounts.person_id is 'Идентификатор пользователя';
comment on column person_discounts.pizzeria_id is 'Идентификатор пиццерии';
comment on column person_discounts.discount is 'Персональная скидка';

select obj_description('person_discounts'::regclass, 'pg_class');

select
    column_name,
    col_description(format('%s.%s', table_schema, table_name)::regclass, ordinal_position) as column_comment
from
    information_schema.columns
where
    table_name = 'person_discounts';
