{%- set source_model = "stg_sls_invoice_line_items" -%}
{%- set src_pk = "SLS_INVOICE_LINE_ITEMS_HK" -%}
{%- set src_payload = ["PRODUCT_NUMBER", "QUANTITY", "AMOUNT",
                       "DISCOUNT"] -%}
{%- set src_hashdiff = "SAT_SLS_INVOICE_LINE_ITEMS_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}