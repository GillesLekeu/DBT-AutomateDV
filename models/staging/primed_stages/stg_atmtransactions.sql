{%- set yaml_metadata -%}
source_model:
  DBT: ATMTRANSACTIONS
derived_columns:
  RECORD_SOURCE: '!STG_ATMTRANSACTIONS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  ATMTRANSACTIONS_HK: ATMTRANSACTIONID
  SAT_BK_ATMTRANSACTIONS_HASHDIFF:
    is_hashdiff: true
    columns:
      - ATMID
      - ACCOUNTID
      - TRANSACTIONDATE
      - AMOUNT
  ATMS_HK: ATMID
  LNK_ATMTRANSACTIONS_ATMS_HK:
    - ATMTRANSACTIONID
    - ATMID
  ACCOUNTS_HK: ACCOUNTID
  LNK_ATMTRANSACTIONS_ACCOUNTS_HK:
    - ATMTRANSACTIONID
    - ACCOUNTID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}