select
*
from {{ ref('stg_raw__sales') }} as sales
join {{ ref('stg_raw__ship') }} as ship 
on sales.orders_id = ship.orders_id