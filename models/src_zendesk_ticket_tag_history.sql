with source as (

    select * from {{ source('zendesk', 'ticket_tag_history') }}

),

renamed as (

    select
        tag,
        updated,
        ticket_id,
        user_id,
        tagged
        -- _fivetran_synced

    from source

)

select * from renamed

