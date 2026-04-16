SELECT
    *
FROM
    {{ ref('bronze_customer') }}
WHERE
    loyalty_tier = 'Gold'