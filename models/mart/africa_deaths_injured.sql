SELECT
region
,country
,start_month
,start_year
---updated_event_name
,disaster_type
,disaster_subtype 
,SUM(total_dead) AS total_dead
,SUM(total_injured) AS total_injured
FROM {{ ref('global_deaths_injured_wheather_disasters') }}
WHERE region = 'Africa'
GROUP BY start_month,start_year, region, country, disaster_type, disaster_subtype 