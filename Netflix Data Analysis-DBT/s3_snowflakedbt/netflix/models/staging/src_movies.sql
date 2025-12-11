with raw_movies AS (
    select * from {{sources('netflix', 'r_movies')}}
)
SELECT 
    movie_Id,
    title,
    genres
FROM raw_movies