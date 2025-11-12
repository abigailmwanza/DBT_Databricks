{% snapshot products_snapshot %}

{{ config(
    target_database='dbt_project_retail',
    target_schema='bronze',
    unique_key='id',
    strategy='timestamp',
    updated_at='created_at'
) }}

    select * from {{ source('landing', 'products') }}

{% endsnapshot %}
