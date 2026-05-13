{%- set yaml_metadata -%}
source_model:
  DBT: BRANCHES
derived_columns:
  RECORD_SOURCE: '!STG_BRANCHES'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  BRANCHES_HK: BRANCHID
  SAT_BK_BRANCHES_HASHDIFF:
    is_hashdiff: true
    columns:
      - BRANCHNAME
      - BRANCHADDRESS
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}