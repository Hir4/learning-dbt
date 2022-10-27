{% macro percentage_format(column) %}
    TO_CHAR({{ column }}, 'fm00D00%')
{% endmacro %}