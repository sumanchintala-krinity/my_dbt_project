select
    order_id,  -- It is already named order_id in the source!
    user_id,
    status,
    created_at,
    shipped_at,
    delivered_at,
    num_of_item
from {{ source('thelook_ecommerce', 'orders') }}