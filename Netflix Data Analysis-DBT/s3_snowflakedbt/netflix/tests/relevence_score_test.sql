
select movie_id,
       tag_id,
       relevance
from {{ref('fact_genome_scores')}}
where relevance <=0
  and tag_id in (select tag_id
                 from {{ref('dim_genome_tags')}}
                 where tag_name like '%Action%')