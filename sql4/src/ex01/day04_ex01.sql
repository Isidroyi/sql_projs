select * from v_persons_female
union all
select * from v_persons_male
order by name;