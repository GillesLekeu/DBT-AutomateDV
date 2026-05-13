{%- set yaml_metadata -%}
source_model:
  DBT: EMPLOYEES
derived_columns:
  RECORD_SOURCE: '!STG_EMPLOYEES'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
  POSITION_:
    source_column: POSITION
    escape: true
hashed_columns:
  EMPLOYEES_HK: EMPLOYEEID
  SAT_BK_EMPLOYEES_HASHDIFF:
    is_hashdiff: true
    columns:
      - FIRSTNAME
      - LASTNAME
      - POSITION_
      - BRANCHID
  BRANCHES_HK: BRANCHID
  LNK_EMPLOYEES_BRANCHES_HK:
    - EMPLOYEEID
    - BRANCHID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}