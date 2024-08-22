with 

source as (

    select * from {{ source('eloise-challenge-1-sql', 'global_deaths_geo_en_cities') }}

),

renamed as (

    select
        year,
        disaster_subgroup,
        disaster_type,
        disaster_subtype,
        country,
        city,
        latitude,
        longitude,
        total_dead,
        geo,
        city_en

    from source

)

select * from renamed
