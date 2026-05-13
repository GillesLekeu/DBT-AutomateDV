{%- set source_model = "stg_cardtransactions" -%}
{%- set src_pk = "LNK_CARDTRANSACTIONS_CREDITCARDS_HK" -%}
{%- set src_fk = ["CARDTRANSACTIONS_HK", "CREDITCARDS_HK"] -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.link(source_model=source_model,
                    src_pk=src_pk,
                    src_fk=src_fk,
                    src_ldts=src_ldts,
                    src_source=src_source) }}