with base as (

    select *
    from {{ var('ticket')}}

), fields as (

    select

      id as ticket_id,
      -- _fivetran_synced,
      assignee_id,
      brand_id,
      created_at,
      description,
      due_at,
      group_id,
      is_public,
      organization_id,
      priority,
      recipient,
      requester_id,
      status,
      subject,
      submitter_id,
      ticket_form_id,
      type,
      updated_at,
      url,
      via_channel as created_channel,
      via_source_from_id as source_from_id,
      via_source_from_title as source_from_title,
      via_source_rel as source_rel,
      via_source_to_address as source_to_address,
      via_source_to_name as source_to_name,
      external_id,
      merged_ticket_ids,
      forum_topic_id,
      problem_id,
      has_incidents,
      allow_channelback,
      system_location,
      system_raw_email_identifier,
      system_json_email_identifier,
      system_ip_address,
      system_latitude,
      system_longitude,
      system_message_id,
      custom_fridge_location,
      custom_product,
      custom_shopify_order_id,
      custom_issue_type,
      system_client,
      system_machine_generated

    from base

)

select *
from fields
