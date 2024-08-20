SELECT
disno_
,updated_event_name
,disaster_subgroup
,disaster_type
,disaster_subtype
,updated_location
,country
,region
,start_year
,start_month
,total_deaths
,no__injured
FROM {{ ref('clean_wheather_disasters') }}
WHERE disaster_subgroup = "Climatological"