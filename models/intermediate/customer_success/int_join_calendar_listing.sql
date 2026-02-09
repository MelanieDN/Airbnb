SELECT 
    cu.listing_id,
    cu.date_date,
    lu.room_type,
    lu.host_response_time,
    cu.price,
    cu.price_category,
    lu.review_scores_value,
    lu.review_score_category,
    cu.rented
FROM {{ ref('int_calendar_updated') }} cu
LEFT JOIN {{ ref('int_listing_updated') }} lu
ON cu.listing_id = lu.listing_id