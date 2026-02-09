SELECT
    r.listing_id,
    r.date_date,
    s.room_type,
    s.host_response_time,
    s.review_scores_value,
    s.review_score_category,
    r.rented
FROM {{ ref('int_rented') }} r
LEFT JOIN {{ ref('int_review_score_category') }} s
ON r.listing_id = s.listing_id
