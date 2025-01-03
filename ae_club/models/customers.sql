{{
    config(
        materialized='table'
    )
}}

select 
  c.id customer_id, 
  c.name, 
  c.email, 
  min(o.created_at) first_order_at, 
  count(distinct o.id) number_of_orders 
from 
  `analytics-engineers-club.coffee_shop.customers` c 
  join `analytics-engineers-club.coffee_shop.orders` o on o.customer_id = c.id 
group by 
  1, 
  2, 
  3 
order by 
  5 