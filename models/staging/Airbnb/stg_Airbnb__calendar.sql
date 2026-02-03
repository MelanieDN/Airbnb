with 

source as (

    select * from {{ source('Airbnb', 'calendar') }}

),

renamed as (

    select
        listing_id,
        date_date,
        available,
        price

    from source

)

select * from renamed