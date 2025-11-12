{% macro current_timestamp() %}
    cast('{{ run_started_at }}' as timestamp)
{% endmacro %}