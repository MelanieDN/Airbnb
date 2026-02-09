SELECT 
    listing_id,
    date_date,
    price,
    CASE
        WHEN price < 80 THEN 'Budget'
        WHEN price BETWEEN 80 AND 150 THEN 'Mid Range'
        WHEN price BETWEEN 151 AND 300 THEN 'Premium'
        WHEN price BETWEEN 301 AND 600 THEN 'Luxury'
        WHEN price > 600  THEN 'Ultra Luxury'
        ELSE NULL
    END AS price_category,
    CASE 
        WHEN available = FALSE THEN 1
        WHEN available = TRUE THEN 0
        ELSE NULL
    END AS rented
FROM {{ ref('stg_Airbnb__calendar') }}
