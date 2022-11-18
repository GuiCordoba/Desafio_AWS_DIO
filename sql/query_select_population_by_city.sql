select city, population
from dio_live_athena_data_desafio
where population > 0
order by population desc;
