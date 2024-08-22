SELECT  
region
,country
,start_month
,start_year
---updated_event_name
,disaster_type
,disaster_subtype 
,SUM(total_dead) AS total_dead
FROM {{ ref('global_deaths_injured_wheather_disasters') }}
WHERE disaster_subgroup = 'Meteorological'
GROUP BY start_month,start_year, region, country, disaster_type, disaster_subtype 
