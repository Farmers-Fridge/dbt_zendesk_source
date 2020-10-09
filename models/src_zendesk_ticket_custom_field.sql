with source as (

    select * from {{ source('zendesk', 'ticket_custom_field') }}

),

renamed as (

    select
        id,
        title
        -- _fivetran_synced

    from source

)

select * from renamed

