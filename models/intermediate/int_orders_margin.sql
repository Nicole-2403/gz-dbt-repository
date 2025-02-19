select
    date_date,
    orders_id,
    round(sum(revenue),2) as revenue,
    round(sum(purchase_price),2) as purchase_price,
    round(sum(margin),2)as margin
from {{ ref("int_sales_margin") }}
group by 
    date_date,     
    orders_id
