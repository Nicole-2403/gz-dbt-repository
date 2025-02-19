select
    orders_id
    ,sum(revenue) as revenue
    ,sum(purchase_price) as purchase_price
from {{ ref('int_sales_margin') }} as sales_margin
join {{ ref('stg_raw__sales') }} as sales
using sales_margin.orders_id = sales.orders_id
group by
    orders_id
   
