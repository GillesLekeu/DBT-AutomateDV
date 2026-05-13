{%- set source_model = "stg_accounts" -%}
{%- set src_pk = "ACCOUNTS_HK" -%}
{%- set src_payload = ["CUSTOMERID", "ACCOUNTTYPE", "BALANCE_DATE",
                       "BALANCE", "BRANCHID"] -%}
{%- set src_hashdiff = "SAT_BK_ACCOUNTS_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}