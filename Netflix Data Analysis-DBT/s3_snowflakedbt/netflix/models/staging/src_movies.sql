with raw_movies AS (
    select * from MOVIELENS.RAW.RAW_MOVIES
)
SELECT 
    movie_Id,
    title,
    genres
FROM raw_movies