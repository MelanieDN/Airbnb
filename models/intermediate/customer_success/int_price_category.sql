SELECT 
    listing_id,
    date_date,
    available,
    price,
    CASE
        WHEN price < 80 THEN 'Budget'
        WHEN price BETWEEN 80 AND 150 THEN 'Mid-Range'
        WHEN price BETWEEN 151 AND 300 THEN 'Premium'
        WHEN price BETWEEN 301 AND 600 THEN 'Luxury'
        WHEN price > 600  THEN 'Ultra_Luxury'
        ELSE NULL
    END AS price_category
FROM {{ ref('stg_Airbnb__calendar') }}