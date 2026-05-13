{%- set source_model = "stg_sls_motorcycles" -%}
{%- set src_pk = "SLS_MOTORCYCLES_HK" -%}
{%- set src_payload = ["NAME", "CODE", "ENGINE_TYPE",
                       "ENGINE_CC", "ENGINE_POWER_KW", "TYPE"] -%}
{%- set src_hashdiff = "SAT_SLS_MOTORCYCLES_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}