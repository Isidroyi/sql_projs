create sequence seq_person_discounts start 1;

select setval('seq_person_discounts', (select coalesce(MAX(id), 0) from person_discounts) + 1);


alter table person_discounts
    alter column id set default (nextval('seq_person_discounts'));