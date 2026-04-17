WITH payments AS (
    SELECT
        payment_id,
        order_id,
        customer_id,
        payment_method,
        CAST(payment_amount AS NUMERIC) AS payment_value,
        payment_status
    FROM {{ source('raw_data', 'payments') }}
)
SELECT * FROM payments
