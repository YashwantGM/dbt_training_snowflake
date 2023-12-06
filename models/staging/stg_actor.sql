 {{ config(materialized='table') }}

with source_data as
(
    select * from {{source("dvdrental",'actor')}}
)

SELECT
 *
FROM source_data