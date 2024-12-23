{# raw table col name#}
WITH columns_info AS (
    SELECT
        column_name,
        data_type,
        table_schema,
        table_name
    FROM
        information_schema.columns
    WHERE
        table_schema = 'STAGING'
        AND table_name = 'Housingprices'
)

SELECT * FROM columns_info