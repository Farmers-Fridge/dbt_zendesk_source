with source as (

    select * from {{ source('zendesk', 'user_tag') }}

),

renamed as (

    select
        user_id,
        tag
        -- _fivetran_synced

    from source

)

select * from renamed

