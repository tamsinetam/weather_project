SELECT
base.year,
base.disaster_subgroup AS hazard_family,
base.disaster_type AS hazard_type,
base.disaster_subtype AS hazard_subtype,
region.region,
base.country,
base.city_en,
base.geo,
base.total_dead
FROM {{ ref('stg_eloise-challenge-1-sql__global_deaths_geo_en_cities') }} AS base
LEFT JOIN {{ ref('global_deaths_with_cities') }} AS region
ON base.city = region.city