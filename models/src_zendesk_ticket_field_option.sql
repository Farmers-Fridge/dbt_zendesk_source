with source as (

    select * from {{ source('zendesk', 'ticket_field_option') }}

),

renamed as (

    select
        value,
        name,
        default
        -- _fivetran_synced

    from source

)

select * from renamed

