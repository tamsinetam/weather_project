SELECT
disno_
,updated_event_name
,disaster_subgroup
,disaster_type
,disaster_subtype
,associated_types
,iso
,subregion
,region
,standardized_magnitude
FROM {{ ref('geo_magnitude') }}
LEFT JOIN {{ ref('stg_eloise-challenge-1-sql__coordinates_cities_countries') }} USING (disno_)