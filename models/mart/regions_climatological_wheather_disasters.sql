SELECT
region
,country
,start_month
,start_year
,updated_event_name
,disaster_type
,disaster_subtype 
,SUM(total_deaths) AS total_dead
,SUM(no__injured) AS total_injured
FROM {{ ref('climatological_wheather_disasters') }}
GROUP BY start_month,start_year, region, country, updated_event_name, disaster_type, disaster_subtype 
--I exclude the null values as they add nothing on the map chart I'm building on Looker Studio
HAVING total_dead is not null AND total_injured is not null