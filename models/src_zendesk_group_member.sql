with source as (

    select * from {{ source('zendesk', 'group_member') }}

),

renamed as (

    select
        id,
        user_id,
        group_id
        -- _fivetran_deleted,
        -- _fivetran_synced

    from source
    where not _fivetran_deleted

)

select * from renamed

