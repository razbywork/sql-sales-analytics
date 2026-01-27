SELECT
    c.customer_id,
    c.full_name,
    SUM(oi.quantity * p.price) AS total_revenue,
    RANK() OVER (ORDER BY SUM(oi.quantity * p.price) DESC) AS revenue_rank
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.status = 'Completed'
GROUP BY c.customer_id, c.full_name;
