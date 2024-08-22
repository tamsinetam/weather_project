with 

source as (

    select * from {{ source('eloise-challenge-1-sql', 'magnitude') }}

),

renamed as (

    select
        disno_,
        magnitude_uniformized

    from source

)

select * from renamed
