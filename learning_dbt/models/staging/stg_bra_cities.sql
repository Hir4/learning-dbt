with cities as (
  select 
    countrycode as city_countrycode,
    name as city_name,
    population as city_population
  from public.city
  where countrycode = 'BRA'
)

select * from cities