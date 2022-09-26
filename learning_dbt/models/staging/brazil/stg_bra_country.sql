with country as (
  select 
    code,
    name as country_name,
    continent
  from {{ source('bra_info', 'country') }}
  where code = 'BRA'
)

select * from country