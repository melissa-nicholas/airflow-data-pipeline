with source as (
    select
        product_id::int as product_id,
        product_name,
        category,
        price::numeric(10,2) as price
    from {{ ref('products') }}
)

select * from source
