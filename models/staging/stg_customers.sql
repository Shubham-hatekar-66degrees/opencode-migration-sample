SELECT
    customer_id,
    LOWER(email) AS email,
    first_name,
    last_name,
    country
FROM {{ source('raw_data', 'customers') }}