with 

source as (

    select * from {{ source('eloise-challenge-1-sql', 'cities') }}

),

renamed as (

    select
        disno_,
        city

    from source

)

select * from renamed
