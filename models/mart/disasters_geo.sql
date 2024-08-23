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
,disno_
FROM {{ ref('clean_wheather_disasters') }}
LEFT JOIN {{ ref('stg_eloise-challenge-1-sql__magnitude_final') }} AS m
USING (disno_)

