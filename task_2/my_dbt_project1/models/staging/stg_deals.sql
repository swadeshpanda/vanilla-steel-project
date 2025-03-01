{{ config(materialized='view') }}

SELECT
    deal_id,
    opportunity_id,
    deal_type,
    buyer_company,
    supplier_company,
    buyer_am,
    supplier_am,
    booked_gross_revenue,
    booked_gross_profit,
    confirmed_gross_revenue,
    confirmed_gross_profit,
    CASE
        WHEN buyer_am IS NOT NULL AND supplier_am IS NOT NULL THEN 1.0
        ELSE 0.5
    END AS am_share_percentage
FROM {{ ref('deals') }}
