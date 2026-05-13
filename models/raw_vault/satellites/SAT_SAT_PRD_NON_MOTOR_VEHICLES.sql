{%- set source_model = "stg_prd_non_motor_vehicles" -%}
{%- set src_pk = "PRD_NON_MOTOR_VEHICLES_HK" -%}
{%- set src_payload = ["NAME", "CODE", "GROUPSET",
                       "GROUPSET_TYPE", "SPEED_TYPE", "DRIVE_TRAIN",
                       "COLOR"] -%}
{%- set src_hashdiff = "SAT_PRD_NON_MOTOR_VEHICLES_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}