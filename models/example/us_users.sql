{{ config(materialized='table') }}

with raw_users as (
    select * from {{ source('thelook_ecommerce', 'users') }}
)

select
    id as user_id,
    first_name,
    last_name,
    email,
    state,
    created_at
from raw_users
where country = 'United States'