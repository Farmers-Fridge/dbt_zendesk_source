with source as (

    select * from {{ source('zendesk', 'domain_name') }}

),

renamed as (

    select
        organization_id,
        index,
        domain_name
        -- _fivetran_synced

    from source

)

select * from renamed
