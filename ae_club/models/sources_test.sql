select *
from {{ source('coffee_shop', 'orders') }} as orders