{%- set source_model = "stg_lds_prd_inv_prod_shops" -%}
{%- set src_pk = "LDS_PRD_INV_PROD_SHOPS_HK" -%}
{%- set src_payload = ["INVENTORY_ID", "MOTOR_VEHICLE_ID", "NON_MOTOR_VEHICLE_ID",
                       "SHOP_ID"] -%}
{%- set src_hashdiff = "LDS_PRD_INV_PROD_SHOPS_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}