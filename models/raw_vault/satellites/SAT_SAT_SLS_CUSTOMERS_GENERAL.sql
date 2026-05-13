{%- set source_model = "stg_sls_customers_general" -%}
{%- set src_pk = "SLS_CUSTOMERS_GENERAL_HK" -%}
{%- set src_hashdiff = "SAT_SLS_CUSTOMERS_GENERAL_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}