{%- set yaml_metadata -%}
source_model:
  DBT: BENEFICIARIES
derived_columns:
  RECORD_SOURCE: '!STG_BENEFICIARIES'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  BENEFICIARIES_HK: BENEFICIARYID
  SAT_BK_BENEFICIARIES_HASHDIFF:
    is_hashdiff: true
    columns:
      - POLICYID
      - BENEFICIARYNAME
      - RELATIONSHIP
  INSURANCEPOLICIES_HK: POLICYID
  LNK_BENEFICIARIES_INSURANCEPOLICIES_HK:
    - BENEFICIARYID
    - POLICYID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}