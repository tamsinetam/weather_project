SELECT 
dead.start_year AS year
,dead.disaster_subgroup
,dead.disaster_type
,dead.disaster_subtype
,dead.region
,dead.country
,city.city
,city.latitude
,city.longitude
,dead.total_dead
FROM {{ ref('global_deaths_injured_wheather_disasters') }} AS dead
LEFT JOIN {{ ref('stg_eloise-challenge-1-sql__animation_map_for_dead_people') }} AS city
USING (disno_)
--I have 1034 lines where lat and lon are null out of 6,486 rows. I delete them 
WHERE total_dead IS NOT NULL AND city.latitude IS NOT NULL AND city.longitude IS NOT NULL