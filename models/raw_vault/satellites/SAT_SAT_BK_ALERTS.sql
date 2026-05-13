{%- set source_model = "stg_alerts" -%}
{%- set src_pk = "ALERTS_HK" -%}
{%- set src_payload = ["CUSTOMERID", "ALERTTYPE", "MESSAGE",
                       "ALERTDATE"] -%}
{%- set src_hashdiff = "SAT_BK_ALERTS_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}