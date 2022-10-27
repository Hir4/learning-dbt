select 
  country_name
from
  {{ ref("dim_brazil") }}
group by 1
having not(country_name = 'Brazil')