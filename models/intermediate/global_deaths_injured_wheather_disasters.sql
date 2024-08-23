SELECT
disno_
,disaster_subgroup
,disaster_type
,disaster_subtype
,region
,country
,start_year
,start_month
,total_deaths AS total_dead
,no__injured AS total_injured
FROM {{ ref('clean_wheather_disasters') }}
WHERE total_deaths is not null 
