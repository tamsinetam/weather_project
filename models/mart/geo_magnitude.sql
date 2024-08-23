SELECT 
d.updated_event_name
,d.disaster_subgroup
,d.disaster_type
,d.disaster_subtype
,d.associated_types
,d.iso
,d.country
,d.subregion
,d.region
,d.disno_
,m.standardized_magnitude
FROM {{ ref('clean_wheather_disasters') }} AS d 
LEFT JOIN {{ ref('stg_eloise-challenge-1-sql__magnitude_final') }} AS  m
USING (disno_)

