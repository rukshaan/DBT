{{config(
    materialized='table'
)}}
WITH movies AS (
    SELECT movie_id
    FROM {{ ref('src_movies') }}
),

tags AS (
    SELECT movie_id
    FROM {{ ref('src_tags') }}
)

SELECT *
FROM movies
UNION
SELECT *
FROM tags
