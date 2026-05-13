{%- set yaml_metadata -%}
source_model:
  DBT: LOANS
derived_columns:
  RECORD_SOURCE: '!STG_LOANS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  LOANS_HK: LOANID
  SAT_BK_LOANS_HASHDIFF:
    is_hashdiff: true
    columns:
      - CUSTOMERID
      - LOANTYPE
      - LOANAMOUNT
      - INTERESTRATE
      - LOANSTARTDATE
      - LOANENDDATE
  CUSTOMERS_HK: CUSTOMERID
  LNK_LOANS_CUSTOMERS_HK:
    - LOANID
    - CUSTOMERID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}