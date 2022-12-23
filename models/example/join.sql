
{{ config(materialized='table') }}


with cte as (

    select 1 as id
    union all
    select null as id
    union all 
    select 2 as id
    union all 
    select 3 as id 

)

select *
from cte
