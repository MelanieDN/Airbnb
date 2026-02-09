SELECT
    listing_id,
    room_type,
    host_response_time,
    review_scores_value,
    CASE
        WHEN review_scores_value BETWEEN 4.9 AND 5.0 THEN 'Premium'
        WHEN review_scores_value BETWEEN 4.7 AND 4.89 THEN 'High Quality'
        WHEN review_scores_value BETWEEN 4.5 AND 4.69 THEN 'Fair'
        WHEN review_scores_value BETWEEN 4.0 AND 4.49 THEN 'Below Average'
        WHEN review_scores_value BETWEEN 0 AND 3.99 THEN 'Low Performing'
        ELSE NULL
    END AS review_score_category,
FROM {{ ref('stg_Airbnb__listing') }}
