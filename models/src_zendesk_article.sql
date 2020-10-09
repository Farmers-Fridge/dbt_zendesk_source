with source as (

    select * from {{ source('zendesk', 'article') }}

),

renamed as (

    select
        id,
        author_id,
        permission_group_id,
        body,
        comments_disabled,
        created_at,
        updated_at,
        edited_at,
        draft,
        url,
        html_url,
        position,
        vote_sum,
        vote_count,
        section_id,
        promoted,
        outdated,
        name,
        title,
        source_locale,
        locale
        -- _fivetran_synced

    from source

)

select * from renamed
