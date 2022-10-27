with countrylanguage as (
  select 
    countrycode as language_countrycode,
    language,
    {{ percentage_format('percentage') }} as percentage,
    {{ dl_inserted_at() }}
  from {{ source('bra_info', 'countrylanguage') }}
  where countrycode = 'BRA'
)

select * from countrylanguage