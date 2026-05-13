{%- set yaml_metadata -%}
source_model:
  DBT: CUSTOMERS
derived_columns:
  RECORD_SOURCE: '!STG_CUSTOMERS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  CUSTOMERS_HK: CUSTOMERID
  SAT_BK_CUSTOMERS_HASHDIFF:
    is_hashdiff: true
    columns:
      - FIRSTNAME
      - LASTNAME
      - DATEOFBIRTH
      - EMAIL
      - SSN
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}