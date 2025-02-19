select
    date_date,
    orders_id,
    product.products_id,
    round(sum(revenue),2) as revenue,
    round(sum(purchase_price),2) as purchase_price,
    round(sum(revenue - purchase_price),2) as margin
from {{ ref("stg_raw__product") }} as product
join {{ ref("stg_raw__sales") }} as sales 
on product.products_id = sales.products_id
group by 
    date_date,
    orders_id,
    products_id
