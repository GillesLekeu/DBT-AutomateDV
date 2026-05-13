{%- set yaml_metadata -%}
source_model:
  DBT: ALERTS
derived_columns:
  RECORD_SOURCE: '!STG_ALERTS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  ALERTS_HK: ALERTID
  SAT_BK_ALERTS_HASHDIFF:
    is_hashdiff: true
    columns:
      - CUSTOMERID
      - ALERTTYPE
      - MESSAGE
      - ALERTDATE
  CUSTOMERS_HK: CUSTOMERID
  LNK_ALERTS_CUSTOMERS_HK:
    - ALERTID
    - CUSTOMERID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}