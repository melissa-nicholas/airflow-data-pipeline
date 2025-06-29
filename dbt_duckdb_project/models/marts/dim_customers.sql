with customer as (
    select * from {{ ref('stg_customers') }}
),

final as (

    select
        customer_id,
        concat_ws(' ', 
            upper(substr(first_name, 1, 1)) || lower(substr(first_name, 2)), 
            upper(substr(last_name, 1, 1)) || lower(substr(last_name, 2))
        ) as full_name,
        lower(email) as email,
        region,
        date_trunc('year', sign_up_date) as signup_year
    from customer

)

select * from final
