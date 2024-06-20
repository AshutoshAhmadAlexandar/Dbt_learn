select
    {{ dbt_utils.surrogate_key(['customer_id','order_date'])}} as id, {# use as identifier #}
    customer_id,
    order_date,
    count(*),
from {{ ref('stg_jaffle_shop__orders')}}
group by 1,2,3