WITH revenue AS (
    SELECT 
        buyer_company,
        -- Convert "NA" and other invalid values to NULL before casting
        SUM(CAST(NULLIF(confirmed_gross_revenue, 'NA') AS FLOAT64)) AS total_revenue
    FROM {{ ref('stg_deals') }}
    WHERE confirmed_gross_revenue IS NOT NULL 
          AND confirmed_gross_revenue NOT IN ('NA', '')  -- Ensure only valid numbers
    GROUP BY buyer_company
)
SELECT * FROM revenue
