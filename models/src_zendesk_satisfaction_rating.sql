with source as (

    select * from {{ source('zendesk', 'satisfaction_rating') }}

),

renamed as (

    select
        id,
        url,
        assignee_id,
        group_id,
        requester_id,
        ticket_id,
        score,
        created_at,
        updated_at,
        comment,
        reason
        -- _fivetran_synced

    from source

)

select * from renamed

