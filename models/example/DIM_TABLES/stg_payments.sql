{{ config(materialized='table') }}

with source_data as
(
    select * from {{source('raw','PAYMENTS')}}
)
select * from source_data