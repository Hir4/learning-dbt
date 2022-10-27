with country as (
  select * from {{ ref("stg_bra_country") }}
),

city as (
  select * from {{ ref("stg_bra_cities") }}
),

language as (
  select * from {{ ref("stg_bra_language") }}
)

select 
  continent,
  country_name,
  city_name,
  city_population,
  language,
  percentage,
  {{ dl_inserted_at() }} 
from country 
  full outer join city on country.code = city.city_countrycode
  full outer join language on language.language_countrycode = city.city_countrycode