SELECT 
    listing_id,
    date_date,
    price,
    CASE 
        WHEN available = FALSE THEN 1
        WHEN available = TRUE THEN 0
        ELSE NULL
    END AS rented,
FROM {{ ref('stg_Airbnb__calendar') }}