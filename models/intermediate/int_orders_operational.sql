select
orders.date_date
, orders.orders_id
, orders.revenue
, orders.purchase_price
, orders.margin
, round(orders.margin+ship.shipping_fee-ship.log_cost-ship.ship_cost,2) as operational_margin
, ship.shipping_fee
, ship.ship_cost
, ship.log_cost
from {{ ref('int_orders_margin') }} as orders
join {{ ref('stg_raw__ship') }} as ship
using (orders_id)
order by orders_id desc

