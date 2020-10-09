with source as (

    select * from {{ source('zendesk', 'alert_recipient') }}

),

renamed as (

    select
        user_id,
        ticket_alert_id
        -- _fivetran_synced

    from source

)

select * from renamed
