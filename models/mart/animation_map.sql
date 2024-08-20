select
    disno_,
    -- , classification_key
    -- , disaster_subgroup
    -- , disaster_type
    -- , disaster_subtype
    -- , iso
    -- , country
    -- , subregion
    -- , latitude
    -- , longitude
    updated_location
from {{ ref("clean_wheather_disasters") }}
