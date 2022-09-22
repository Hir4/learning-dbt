with countrylanguage as (
  select 
    countrycode as language_countrycode,
    language,
    percentage
  from public.countrylanguage
  where countrycode = 'BRA'
)

select * from countrylanguage