{{ config(materialized='table') }}
with customers_data as
(
    select * from {{source('raw','customers') }}
)
select * from cutomers_datadata