with 

source as (

    select * from {{ source('eloise-challenge-1-sql', 'magnitude_new') }}

),

renamed as (

    select
        disno_,
        magnitude_standardized

    from source

)

select * from renamed
