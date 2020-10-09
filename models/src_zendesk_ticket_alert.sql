with source as (

    select * from {{ source('zendesk', 'ticket_alert') }}

),

renamed as (

    select
        id,
        ticket_id,
        via_channel,
        via_source_from_id,
        via_source_from_title,
        via_source_to_name,
        via_source_to_address,
        via_source_rel,
        type,
        body,
        subject,
        resource,
        created,
        user_id
        -- _fivetran_synced

    from source

)

select * from renamed

