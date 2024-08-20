SELECT 
updated_event_name
,disaster_subgroup
,disaster_type
,disaster_subtype
,associated_types
,iso
,country
,subregion
,region
,city
FROM {{ ref('clean_wheather_disasters') }}

