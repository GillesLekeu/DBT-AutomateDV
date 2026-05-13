{%- set yaml_metadata -%}
source_model:
  SPEEDSHOP: INVENTORY
derived_columns:
  RECORD_SOURCE: '!STG_INVENTORY'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  INVENTORY_HK: INVENTORY_ID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}