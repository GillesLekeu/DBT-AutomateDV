{%- set yaml_metadata -%}
source_model:
  DBT: TRANSACTIONS
derived_columns:
  RECORD_SOURCE: '!STG_TRANSACTIONS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  TRANSACTIONS_HK: TRANSACTIONID
  SAT_BK_TRANSACTIONS_HASHDIFF:
    is_hashdiff: true
    columns:
      - ACCOUNTID
      - TRANSACTIONDATE
      - AMOUNT
      - TRANSACTIONTYPE
      - CUSTOMERID
  ACCOUNTS_HK: ACCOUNTID
  LNK_TRANSACTIONS_ACCOUNTS_HK:
    - TRANSACTIONID
    - ACCOUNTID
  CUSTOMERS_HK: CUSTOMERID
  LNK_TRANSACTIONS_CUSTOMERS_HK:
    - TRANSACTIONID
    - CUSTOMERID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}