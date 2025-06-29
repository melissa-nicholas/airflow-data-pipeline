with source as (
    select
        order_id::int as order_id,
        customer_id::int as customer_id,
        product_id::int as product_id,
        strptime(order_date, '%m/%d/%Y') as order_date,
        quantity::int as quantity
    from {{ ref('orders') }}
)

select * from source
