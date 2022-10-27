{% macro dl_inserted_at() %}
    {{ get_datetime_now() }} as inserted_at
{% endmacro %}