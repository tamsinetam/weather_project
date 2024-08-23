with 

source as (

    select * from {{ source('eloise-challenge-1-sql', 'damages_raw') }}

),

renamed as (

    select
        disno_,
        start_year,
        disaster_subgroup,
        disaster_type,
        disaster_subtype,
        region,
        country,
        city,
        longitude,
        latitude,
        total_damage___000_us__,
        total_damage__adjusted___000_us__

    from source

)

select * from renamed
