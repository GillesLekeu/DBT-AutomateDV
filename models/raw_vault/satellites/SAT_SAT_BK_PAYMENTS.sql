{%- set source_model = "stg_payments" -%}
{%- set src_pk = "PAYMENTS_HK" -%}
{%- set src_payload = ["LOANID", "PAYMENTDATE", "PAYMENTAMOUNT"] -%}
{%- set src_hashdiff = "SAT_BK_PAYMENTS_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}