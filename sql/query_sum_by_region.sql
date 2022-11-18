select region,
	sum(population)
from dio_live_athena_data_desafio
where population > 0
group by region;
