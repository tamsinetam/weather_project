WITH updated_disasters AS (
    SELECT
        *,
        CASE 
            WHEN event_name IS NULL THEN 'no_data' 
            ELSE event_name 
        END AS updated_event_name,
        CASE 
            WHEN origin IS NULL THEN 'no_data' 
            ELSE origin 
        END AS updated_origin,
        CASE
            WHEN Declaration = TRUE THEN 1
            WHEN Declaration = FALSE THEN 0
            ELSE NULL
        END AS updated_declaration,
        CASE
            WHEN Appeal = TRUE THEN 1
            WHEN Appeal = FALSE THEN 0
            ELSE NULL
        END AS updated_appeal,
        CASE
            WHEN Location IS NULL THEN "no_data"
            else Location
        END AS updated_location
    FROM {{ ref('stg_eloise-challenge-1-sql__2000_2024_disasters') }}
)
SELECT 
    * EXCEPT(event_name, origin, Declaration, Appeal, Location)
FROM updated_disasters
LEFT JOIN {{ ref('stg_eloise-challenge-1-sql__cities') }}
USING (disno_)
