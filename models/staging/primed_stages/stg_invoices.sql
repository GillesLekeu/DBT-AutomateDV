{%- set yaml_metadata -%}
source_model:
  SPEEDSHOP: INVOICES
derived_columns:
  RECORD_SOURCE: '!STG_INVOICES'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  INVOICES_HK: INVOICE_ID
  CUSTOMERS_HK: NATIONAL_PERSON_ID
  LNK_INVOICES_CUSTOMERS_HK:
    - INVOICE_ID
    - NATIONAL_PERSON_ID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}