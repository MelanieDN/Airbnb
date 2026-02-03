with 

source as (

    select * from {{ source('Airbnb', 'listing') }}

),

renamed as (

    select
        listing_id,
        room_type,
        host_response_time,
        review_scores_value

    from source

)

select * from renamed