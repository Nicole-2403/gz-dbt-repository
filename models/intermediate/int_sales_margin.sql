select
*
from {{ ref('stg_raw__product') }} as product
join {{ ref('stg_raw__sales') }} as sales
on product.products_id = sales.products_id