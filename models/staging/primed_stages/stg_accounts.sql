{%- set yaml_metadata -%}
source_model:
  DBT: ACCOUNTS
derived_columns:
  RECORD_SOURCE: '!STG_ACCOUNTS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  ACCOUNTS_HK: ACCOUNTID
  SAT_BK_ACCOUNTS_HASHDIFF:
    is_hashdiff: true
    columns:
      - CUSTOMERID
      - ACCOUNTTYPE
      - BALANCE_DATE
      - BALANCE
      - BRANCHID
  BRANCHES_HK: BRANCHID
  LNK_ACCOUNTS_BRANCHES_HK:
    - ACCOUNTID
    - BRANCHID
  CUSTOMERS_HK: CUSTOMERID
  LNK_ACCOUNTS_CUSTOMERS_HK:
    - ACCOUNTID
    - CUSTOMERID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}