with raw_genome_scores as (
    select * from MOVIELENS.RAW.RAW_GENOME_SCORES
)
select movie_id,
       tag_id,
       relevance,
       from raw_genome_scores