{%- set source_model = "stg_services" -%}
{%- set src_pk = "SERVICES_HK" -%}
{%- set src_payload = ["SERVICENAME", "SERVICEDESCRIPTION"] -%}
{%- set src_hashdiff = "SAT_BK_SERVICES_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}