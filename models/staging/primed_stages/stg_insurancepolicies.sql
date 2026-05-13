{%- set yaml_metadata -%}
source_model:
  DBT: INSURANCEPOLICIES
derived_columns:
  RECORD_SOURCE: '!STG_INSURANCEPOLICIES'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  INSURANCEPOLICIES_HK: POLICYID
  SAT_BK_INSURANCEPOLICIES_HASHDIFF:
    is_hashdiff: true
    columns:
      - CUSTOMERID
      - POLICYTYPE
      - COVERAGEAMOUNT
      - STARTDATE
      - ENDDATE
  CUSTOMERS_HK: CUSTOMERID
  LNK_INSURANCEPOLICIES_CUSTOMERS_HK:
    - POLICYID
    - CUSTOMERID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}