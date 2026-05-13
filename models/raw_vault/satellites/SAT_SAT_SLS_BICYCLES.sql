{%- set source_model = "stg_sls_bicycles" -%}
{%- set src_pk = "SLS_BICYCLES_HK" -%}
{%- set src_payload = ["NAME", "CODE", "GROUPSET",
                       "GROUPSET_TYPE"] -%}
{%- set src_hashdiff = "SAT_SLS_BICYCLES_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}