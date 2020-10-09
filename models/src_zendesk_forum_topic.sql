with source as (

    select * from {{ source('zendesk', 'forum_topic') }}

),

renamed as (

    select
        id,
        name,
        description
        -- _fivetran_deleted,
        -- _fivetran_synced

    from source
    where not _fivetran_deleted

)

select * from renamed
