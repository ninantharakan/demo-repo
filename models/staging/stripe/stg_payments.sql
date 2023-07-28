with payment as (
    
    select
        id as order_id,
        {{ cents_to_dollars('amount') }}  as amount

    from {{ source('stripe', 'payment') }}
)

select * from payment