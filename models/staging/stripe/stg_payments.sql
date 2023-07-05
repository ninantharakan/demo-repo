with payment as (
    
    select
        id as order_id,
        amount as amount

    from {{ source('stripe', 'payment') }}
)

select * from payment