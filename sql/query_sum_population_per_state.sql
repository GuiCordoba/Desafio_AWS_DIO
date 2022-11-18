select state, sum(population) as population from  dio_live_athena_data_desafio
where population > 0
group by state
order by population desc;