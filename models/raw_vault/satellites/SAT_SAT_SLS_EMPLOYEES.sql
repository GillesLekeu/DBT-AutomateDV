{%- set source_model = "stg_sls_employees" -%}
{%- set src_pk = "SLS_EMPLOYEES_HK" -%}
{%- set src_payload = ["EMPLOYEE_SKILLS", "FUNCTION_DESCRIPTION", "IS_EMPLOYEE",
                       "IS_ACTIVE", "ADDRESS_NUMBER", "GENDER",
                       "BIRTHDATE", "LASTNAME", "FIRSTNAME"] -%}
{%- set src_hashdiff = "SAT_SLS_EMPLOYEES_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}