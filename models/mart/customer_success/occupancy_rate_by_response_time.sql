SELECT 
    host_response_time,
    ROUND(SUM(rented) / COUNT(*) * 100,2) AS occupancy_rate
FROM {{ ref('int_join_calendar_listing') }}
GROUP BY host_response_time
ORDER BY occupancy_rate DESC