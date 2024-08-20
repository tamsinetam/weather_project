SELECT * FROM {{ ref('stg_eloise-challenge-1-sql__2000_2024_disasters') }}
WHERE event_name IS NULL
