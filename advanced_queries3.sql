SELECT
    c.customer_id,
    c.full_name,
    MAX(o.order_date) AS last_order_date,
    AGE(CURRENT_DATE, MAX(o.order_date)) AS time_since_last_order
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
    AND o.status = 'Completed'
GROUP BY c.customer_id, c.full_name
HAVING MAX(o.order_date) < CURRENT_DATE - INTERVAL '6 months'
   OR MAX(o.order_date) IS NULL
ORDER BY last_order_date;
