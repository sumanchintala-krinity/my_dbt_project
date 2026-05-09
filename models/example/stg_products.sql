select
    id as product_id,
    cost,
    category,
    name,
    brand,
    retail_price,
    department,
    distribution_center_id
from {{ source('thelook_ecommerce', 'products') }}