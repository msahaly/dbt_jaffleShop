with 

source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name,
        concat(first_name, ' ', last_name) as full_name

    from source

)

select * from renamed
-- select first_name, count(distinct(`first_name`)) as count 
-- from renamed
-- group by first_name