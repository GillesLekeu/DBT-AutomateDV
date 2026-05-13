{%- set source_model = "stg_feedback" -%}
{%- set src_pk = "FEEDBACK_HK" -%}
{%- set src_nk = "FEEDBACKID" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.hub(source_model=source_model,
                   src_pk=src_pk,
                   src_nk=src_nk,
                   src_ldts=src_ldts,
                   src_source=src_source) }}