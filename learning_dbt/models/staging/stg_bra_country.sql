with country as (
  select 
    code,
    name as country_name,
    continent
  from public.country
  where code = 'BRA'
)

select * from country