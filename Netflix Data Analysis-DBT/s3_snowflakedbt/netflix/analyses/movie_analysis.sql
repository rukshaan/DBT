WITH rating_summary AS (
    SELECT 
        movie_id,
        AVG(rating) AS avg_rating,
        COUNT(rating) AS rating_count
    FROM {{ ref('fact_ratings') }}
    GROUP BY movie_id
    HAVING COUNT(rating) >= 100
)
SELECT m.movie_title,
       rs.avg_rating,
       rs.rating_count
from rating_summary rs
JOIN {{ ref('dim_movies') }} m ON rs.movie_id = m.movie_id
ORDER BY rs.avg_rating DESC
LIMIT 20;