select
    order_id,  -- NOT id
    user_id,
    status,
    created_at,
    shipped_at,
    delivered_at,
    num_of_item
from {{ source('thelook_ecommerce', 'orders') }}