with raw_movies AS (
    select * from {{source('netflix', 'r_movies')}}
)
SELECT 
    movie_Id,
    title,
    genres
FROM raw_movies