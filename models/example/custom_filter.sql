{{ config(materialized='table') }}

with source_data as (
    -- The ref() function automatically figures out the dataset and project!
    select * from {{ ref('my_first_dbt_model') }}
)

select *
from source_data
where id = 1