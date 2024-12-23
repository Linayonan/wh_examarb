WITH src_region AS (SELECT * FROm {{ ref('src_region') }})

SELECT 
    id, 
    ---{{ dbt_utils.generate_surrogate_key(['id','region']) }} AS region_key, 
    region
FROM src_region