with raw_ratings as (
    select * from MOVIELENS.RAW.RAW_RATINGS
)
select user_id,
       movie_id,
       rating,
       timestamp from raw_ratings