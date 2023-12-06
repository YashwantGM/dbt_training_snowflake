 {{ config(materialized='table') }}

with source_data as
(
    select * from {{source("northwind",'_order_')}}
)

SELECT
 *
FROM source_data