{%- set yaml_metadata -%}
source_model:
  DBT: FEEDBACK
derived_columns:
  RECORD_SOURCE: '!STG_FEEDBACK'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  FEEDBACK_HK: FEEDBACKID
  TICKETS_HK: TICKETID
  LNK_FEEDBACK_TICKETS_HK:
    - FEEDBACKID
    - TICKETID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}