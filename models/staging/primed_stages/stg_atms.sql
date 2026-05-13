{%- set yaml_metadata -%}
source_model:
  DBT: ATMS
derived_columns:
  RECORD_SOURCE: '!STG_ATMS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  ATMS_HK: ATMID
  SAT_BK_ATMS_HASHDIFF:
    is_hashdiff: true
    columns:
      - LOCATION
      - BRANCHID
  BRANCHES_HK: BRANCHID
  LNK_ATMS_BRANCHES_HK:
    - ATMID
    - BRANCHID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}