with 

source as (

    select * from {{ source('eloise-challenge-1-sql', 'animation_map_clean') }}

),

renamed as (

    select
        disno_,
        classification_key,
        disaster_subgroup,
        disaster_type,
        disaster_subtype,
        iso,
        country,
        subregion,
        city,
        year,
        month,
        day,
        latitude,
        longitude

    from source

)

select * from renamed
