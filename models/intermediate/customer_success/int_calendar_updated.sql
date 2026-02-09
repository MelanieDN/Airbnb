SELECT 
    c.listing_id,
    c.date_date,
    c.price,
    c.price_category,
    r.rented
FROM {{ ref('int_price_category') }} c
LEFT JOIN {{ ref('int_rented') }} r
ON c.listing_id = r.listing_id