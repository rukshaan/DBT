{{config(
    materialized='table',
    
)}}
with raw_tags as (
    select * from MOVIELENS.RAW.RAW_TAGS
)
select user_id,
       movie_id,
       tag,
       timestamp from raw_tags