WITH src_raw_genome_scores AS (
    SELECT *
    FROM {{ ref('src_raw_genome_scores') }}
)
select movie_id,
       tag_id,
       ROUND(relevance, 2) AS relevance
FROM src_raw_genome_scores
where relevance > 0