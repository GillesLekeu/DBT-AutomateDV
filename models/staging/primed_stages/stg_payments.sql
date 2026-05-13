{%- set yaml_metadata -%}
source_model:
  DBT: PAYMENTS
derived_columns:
  RECORD_SOURCE: '!STG_PAYMENTS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  PAYMENTS_HK: PAYMENTID
  SAT_BK_PAYMENTS_HASHDIFF:
    is_hashdiff: true
    columns:
      - LOANID
      - PAYMENTDATE
      - PAYMENTAMOUNT
  LOANS_HK: LOANID
  LNK_PAYMENTS_LOANS_HK:
    - PAYMENTID
    - LOANID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}