{%- set yaml_metadata -%}
source_model:
  DBT: CARDTRANSACTIONS
derived_columns:
  RECORD_SOURCE: '!STG_CARDTRANSACTIONS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  CARDTRANSACTIONS_HK: CARDTRANSACTIONID
  SAT_BK_CARDTRANSACTIONS_HASHDIFF:
    is_hashdiff: true
    columns:
      - CARDID
      - TRANSACTIONDATE
      - AMOUNT
      - MERCHANT
  CREDITCARDS_HK: CARDID
  LNK_CARDTRANSACTIONS_CREDITCARDS_HK:
    - CARDTRANSACTIONID
    - CARDID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}