{%- set yaml_metadata -%}
source_model:
  DBT: CREDITCARDS
derived_columns:
  RECORD_SOURCE: '!STG_CREDITCARDS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  CREDITCARDS_HK: CARDID
  SAT_BK_CREDITCARDS_HASHDIFF:
    is_hashdiff: true
    columns:
      - CUSTOMERID
      - CARDNUMBER
      - EXPIRYDATE
      - CREDITLIMIT
  CUSTOMERS_HK: CUSTOMERID
  LNK_CREDITCARDS_CUSTOMERS_HK:
    - CARDID
    - CUSTOMERID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}