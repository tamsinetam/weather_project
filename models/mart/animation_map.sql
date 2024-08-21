select
    disno_
    , classification_key
    , disaster_subgroup
    , disaster_type
    , disaster_subtype
    , iso
    , country
    , subregion
    , latitude
    , longitude
    , city
    , start_year AS year
    , start_month AS month
    , start_day AS day
from {{ ref("clean_wheather_disasters") }}
