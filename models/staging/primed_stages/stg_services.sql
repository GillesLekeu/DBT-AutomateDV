{%- set yaml_metadata -%}
source_model:
  DBT: SERVICES
derived_columns:
  RECORD_SOURCE: '!STG_SERVICES'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  SERVICES_HK: SERVICEID
  SAT_BK_SERVICES_HASHDIFF:
    is_hashdiff: true
    columns:
      - SERVICENAME
      - SERVICEDESCRIPTION
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}