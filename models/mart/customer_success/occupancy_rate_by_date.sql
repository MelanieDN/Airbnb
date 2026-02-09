SELECT 
    date_date,
    ROUND(SUM(rented) / COUNT(*) * 100,2) AS occupancy_rate
FROM {{ ref('int_join_calendar_listing') }}
GROUP BY date_date
ORDER BY occupancy_rate DESC