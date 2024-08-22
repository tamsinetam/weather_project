--- test comment 
with 

source as (

    select * from {{ source('eloise-challenge-1-sql', '2000_2024_disasters') }}

),

renamed as (

    select
        disno_,
        classification_key,
        disaster_subgroup,
        disaster_type,
        disaster_subtype,
        event_name,
        iso,
        country,
        subregion,
        region,
        location,
        origin,
        associated_types,
        appeal,
        declaration,
        magnitude,
        magnitude_scale,
        latitude,
        longitude,
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
        total_damage___000_us__,
        total_damage__adjusted___000_us__,
        cpi,
        admin_units

    from source

)

select * from renamed
