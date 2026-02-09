SELECT 
    price_category,
    ROUND(SUM(rented) / COUNT(*) * 100,2) AS occupancy_rate
FROM {{ ref('int_join_calendar_listing') }}
GROUP BY price_category
ORDER BY occupancy_rate DESC
