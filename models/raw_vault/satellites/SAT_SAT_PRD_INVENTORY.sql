{%- set source_model = "stg_prd_inventory" -%}
{%- set src_pk = "PRD_INVENTORY_HK" -%}
{%- set src_payload = ["ITEMS_IN_STOCK", "ITEMS_ON_ORDER"] -%}
{%- set src_hashdiff = "SAT_PRD_INVENTORY_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}