with source as (

    select * from {{ source('zendesk', 'call_metric') }}

),

renamed as (

    select
        id,
        ticket_id,
        agent_id,
        created_at,
        updated_at,
        direction,
        duration,
        completion_status,
        voicemail,
        phone_number,
        wait_time,
        hold_time,
        talk_time,
        time_to_answer,
        wrap_up_time,
        consultation_time,
        exceeded_queue_wait_time,
        outside_business_hours,
        customer_requested_voicemail,
        minutes_billed,
        call_charge,
        ivr_time_spent,
        ivr_hops,
        ivr_destination_group_name,
        ivr_routed_to,
        ivr_action,
        default_group,
        callback,
        callback_source,
        overflowed,
        overflowed_to,
        recording_control_interactions,
        recording_time,
        not_recording_time,
        call_recording_consent,
        call_recording_consent_action,
        call_recording_consent_keypress,
        quality_issues
        -- _fivetran_synced

    from source

)

select * from renamed
