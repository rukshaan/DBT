with raw_genome_tags as (
    select * from MOVIELENS.RAW.RAW_GENOME_TAGS
)
select tag_id,
       tag,
       from raw_genome_tags