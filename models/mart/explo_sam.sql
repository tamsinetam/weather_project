SELECT 
  wd.disno_,
  wd.disaster_subgroup,
  wd.disaster_type,
  wd.disaster_subtype,
  wd.country,
  wd.region,
  wd.magnitude,
  wd.magnitude_scale,
  wd.start_year,
  wd.start_month,
  wd.start_day,
  wd.end_year,
  wd.end_month,
  wd.end_day,
  wd.total_deaths,
  wd.no__injured,
  wd.no__affected,
  wd.no__homeless,
  wd.total_affected,
  wd.updated_event_name,
  wd.city,
  m.magnitude_uniformized,
  CASE
    -- If month is missing, return NULL
    WHEN start_month IS NULL THEN NULL
    -- If day is missing, use the first day of the month
    WHEN start_day IS NULL THEN DATE(start_year, start_month, 1)
    -- If neither is missing, construct the date from year, month, and day
    ELSE DATE(start_year, start_month, start_day)
  END AS start_date_gran_month
FROM {{ ref('clean_wheather_disasters') }} AS wd
LEFT JOIN {{ ref('stg_eloise-challenge-1-sql__magnitude') }} AS m
USING (disno_)