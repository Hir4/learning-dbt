with country as (
  select 
    code,
    name as country_name,
    continent,
    {{ dl_inserted_at() }}
  from {{ source('bra_info', 'country') }}
  where code = 'BRA'
)

select * from country