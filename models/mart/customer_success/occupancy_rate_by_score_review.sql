SELECT 
    review_score_category,
    ROUND(SUM(rented) / COUNT(*) * 100,2) AS occupancy_rate
FROM {{ ref('int_join_calendar_listing') }}
GROUP BY review_score_category
ORDER BY occupancy_rate DESC