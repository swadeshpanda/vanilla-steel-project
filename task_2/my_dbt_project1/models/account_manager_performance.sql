WITH deals AS (
    SELECT 
        deal_id,
        buyer_am,
        supplier_am,
        booked_gross_revenue,
        CASE 
            WHEN buyer_am IS NOT NULL AND supplier_am IS NOT NULL THEN 1.0
            ELSE 0.5
        END AS am_share
    FROM {{ ref('stg_deals') }}
)
SELECT 
    buyer_am AS account_manager,
    SUM(booked_gross_revenue * am_share) AS total_revenue
FROM deals
WHERE buyer_am IS NOT NULL
GROUP BY account_manager