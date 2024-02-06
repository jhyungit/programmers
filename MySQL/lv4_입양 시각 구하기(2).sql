-- https://school.programmers.co.kr/learn/courses/30/lessons/59413

-- 코드를 입력하세요
with recursive time_table as (
    select 0 as hour union all select hour+1
    from time_table
    where hour < 23)

select time_table.hour as hour, count(animal_id) as `count`
from animal_outs
right join time_table
on hour(datetime) = time_table.hour
group by hour
order by hour