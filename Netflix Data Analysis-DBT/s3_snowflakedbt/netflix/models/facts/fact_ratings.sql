{{ 
    config(
        materialized='incremental',
        on_schema_change='fail'
    ) 
}}

WITH src_ratings AS (
    SELECT *
    FROM {{ ref('src_ratings') }}
)

SELECT 
    user_id,
    movie_id,
    rating,
    timestamp
FROM src_ratings
WHERE rating IS NOT NULL

{% if is_incremental() %}
  -- Load only rows newer than the latest timestamp already loaded
  AND timestamp > (SELECT MAX(timestamp) FROM {{ this }})
{% endif %}
