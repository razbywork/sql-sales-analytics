SELECT
    p.product_id,
    p.product_name,
    COUNT(DISTINCT oi.order_item_id) AS items_sold,
    COUNT(DISTINCT r.return_id) AS items_returned,
    
    ROUND(
        COUNT(DISTINCT r.return_id)::numeric /
        COUNT(DISTINCT oi.order_item_id) * 100,
        2
    ) AS return_rate_percentage

FROM products p

JOIN order_items oi
ON p.product_id = oi.product_id

LEFT JOIN returns r
ON oi.order_item_id = r.order_item_id

GROUP BY
    p.product_id,
    p.product_name

ORDER BY
    return_rate_percentage DESC;
