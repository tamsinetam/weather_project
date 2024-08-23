with 

source as (

    select * from {{ source('eloise-challenge-1-sql', 'coordinates_cities_countries') }}

),

renamed as (

    select
        disno_,
        city,
        country,
        latitude,
        longitude

    from source

)

select * from renamed
