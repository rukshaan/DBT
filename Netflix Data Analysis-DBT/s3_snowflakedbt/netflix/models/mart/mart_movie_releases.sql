{{ config(materialized='table') }}

WITH fact_ratings AS (
    SELECT *
    FROM {{ ref('fact_ratings') }}
),
seed_dates AS (
    SELECT *
    FROM {{ ref('seed_movie_release_dates') }}
)

SELECT
    f.*,
    case
        when s.release_date IS NOT NULL then 'unknown' else 'known'
        
    end AS release_info_available
FROM fact_ratings f
LEFT JOIN seed_dates s
ON f.movie_id = s.movie_id
