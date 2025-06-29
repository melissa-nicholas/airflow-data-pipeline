with source as (
    select
        customer_id::int as customer_id,
        lower(first_name) as first_name,
        lower(last_name) as last_name,
        lower(email) as email,
        strptime(sign_up_date, '%m/%d/%Y') as sign_up_date,
        region
    from {{ ref('customers') }}
)

select * from source
