SELECT 
  disno_,
  disaster_subgroup,
  disaster_type,
  disaster_subtype,
  country,
  magnitude,
  magnitude_scale,
  start_year,
  start_month,
  start_day,
  end_year,
  end_month,
  end_day,
  total_deaths,
  no__injured,
  no__affected,
  no__homeless,
  total_affected,
  updated_event_name,
  city,
  CASE
    -- If month is missing, return NULL
    WHEN start_month IS NULL THEN NULL
    -- If day is missing, use the first day of the month
    WHEN start_day IS NULL THEN DATE(start_year, start_month, 1)
    -- If neither is missing, construct the date from year, month, and day
    ELSE DATE(start_year, start_month, start_day)
  END AS start_date_gran_month
FROM {{ ref('clean_wheather_disasters') }}
