SELECT
b.disno_
,b.updated_event_name
,b.disaster_subgroup
,b.disaster_type
,b.disaster_subtype
,b.associated_types
,b.iso
,b.subregion
,b.region
,b.country
,m.city
,b.standardized_magnitude
,m.latitude
,m.longitude
FROM {{ ref('geo_magnitude') }} AS b 
LEFT JOIN {{ ref('stg_eloise-challenge-1-sql__coordinates_cities_countries') }} AS m 
USING (disno_)