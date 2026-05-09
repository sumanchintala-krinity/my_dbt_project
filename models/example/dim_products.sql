select
    p.product_id, -- Use the name we defined in stg_products!
    p.name,
    p.category,
    p.brand,
    p.retail_price,
    dc.name as distribution_center_name
from {{ ref('stg_products') }} p
left join {{ source('thelook_ecommerce', 'distribution_centers') }} dc 
    on p.distribution_center_id = dc.id