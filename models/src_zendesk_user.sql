with base as (

    select *
    from {{ var('user')}}

), fields as (

    select

      id as user_id,
      -- _fivetran_synced,
      created_at,
      email,
      name,
      organization_id,
      role,
      ticket_restriction,
      time_zone,
      active as is_active,
      url,
      updated_at,
      phone,
      locale_id,
      locale,
      verified as is_verified ,
      authenticity_token,
      external_id,
      alias,
      shared as is_shared,
      shared_agent,
      last_login_at,
      two_factor_auth_enabled as is_two_factor_auth_enabled,
      signature,
      details,
      notes,
      custom_role_id,
      moderator as is_moderator,
      only_private_comments as is_only_private_comments,
      restricted_agent as is_restricted_agent,
      suspended as is_suspended,
      chat_only as is_chat_only,
      remote_photo_url




    from base

)

select *
from fields
