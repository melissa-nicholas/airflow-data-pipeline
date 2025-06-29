with orders as (
    select * from {{ ref('stg_orders') }}
),

products as (
    select * from {{ ref('stg_products') }}
),

final as (

    select
        o.order_id,
        o.order_date,
        o.customer_id,
        o.product_id,
        o.quantity,
        p.price,
        (o.quantity * p.price) as total
    from orders as o
    left join products as p
        on o.product_id = p.product_id

)

select * from final
