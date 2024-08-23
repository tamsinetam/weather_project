with 

source as (

    select * from {{ source('eloise-challenge-1-sql', 'magnitude_final') }}

),

renamed as (

    select
        disno_,
        standardized_magnitude

    from source

)

select * from renamed
