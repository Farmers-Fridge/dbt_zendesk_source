with source as (

    select * from {{ source('zendesk', 'ticket_field_option') }}

),

renamed as (

    select
        value,
        name,
        "DEFAULT" -- snowflake keyword collision. Double quote makes it case sensitive
        -- _fivetran_synced

    from source

)

select * from renamed

