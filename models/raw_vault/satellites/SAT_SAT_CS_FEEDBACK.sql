{%- set source_model = "stg_cs_feedback" -%}
{%- set src_pk = "CS_FEEDBACK_HK" -%}
{%- set src_payload = ["TICKETID", "RATING", "COMMENTS",
                       "FEEDBACKDATE"] -%}
{%- set src_hashdiff = "SAT_CS_FEEDBACK_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}