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
  wd.city,
  m.standardized_magnitude,
  CASE
    -- If month is missing, return NULL
    WHEN start_month IS NULL THEN NULL
    -- If day is missing, use the first day of the month
    WHEN start_day IS NULL THEN DATE(start_year, start_month, 1)
    -- If neither is missing, construct the date from year, month, and day
    ELSE DATE(start_year, start_month, start_day)
  END AS start_date_gran_month
FROM {{ ref('clean_wheather_disasters') }} AS wd
LEFT JOIN {{ ref('stg_eloise-challenge-1-sql__magnitude_final') }} AS m
USING (disno_)