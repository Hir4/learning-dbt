with cities as (
  select 
    countrycode as city_countrycode,
    name as city_name,
    population as city_population,
    {{ dl_inserted_at() }}
  from {{ source('bra_info', 'city') }}
  where countrycode = 'BRA'
)

select * from cities