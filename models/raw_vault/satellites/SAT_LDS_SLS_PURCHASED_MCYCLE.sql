{%- set source_model = "stg_lds_sls_purchased_mcycle" -%}
{%- set src_pk = "LDS_SLS_PURCHASED_MCYCLE_HK" -%}
{%- set src_payload = ["CUSTOMER_NUMBER", "VEHICLE_NUMBER", "SHOP_ID"] -%}
{%- set src_hashdiff = "LDS_SLS_PURCHASED_MCYCLE_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}