{%- set source_model = "stg_sls_shops" -%}
{%- set src_pk = "SLS_SHOPS_HK" -%}
{%- set src_payload = ["SHOP_CODE", "SHOP_NAME", "SHOPPING_CENTER_ID",
                       "SHOP_LOCATION", "ADDRESS_ID", "NUMBER_OF_EMPLOYEES",
                       "SHOP_SIZE", "HAS_PARKING", "MONTLY_COST"] -%}
{%- set src_hashdiff = "SAT_SLS_SHOPS_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}