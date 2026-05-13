{%- set source_model = "stg_loans" -%}
{%- set src_pk = "LOANS_HK" -%}
{%- set src_nk = "LOANID" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.hub(source_model=source_model,
                   src_pk=src_pk,
                   src_nk=src_nk,
                   src_ldts=src_ldts,
                   src_source=src_source) }}