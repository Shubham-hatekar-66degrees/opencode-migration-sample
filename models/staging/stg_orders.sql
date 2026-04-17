WITH orders AS (
    SELECT
        order_id,
        customer_id,
        status AS order_status,
        CAST(total_amount AS NUMERIC) AS order_value,
        CAST(order_date AS DATE) AS order_date
    FROM {{ source('raw_data', 'orders')}}
)
SELECT * FROM orders
