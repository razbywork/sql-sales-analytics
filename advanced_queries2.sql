WITH monthly_revenue AS (
    SELECT
        DATE_TRUNC('month', o.order_date) AS month,
        SUM(oi.quantity * p.price) AS revenue
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    WHERE o.status = 'Completed'
    GROUP BY DATE_TRUNC('month', o.order_date)
),

revenue_with_lag AS (
    SELECT
        month,
        revenue,
        LAG(revenue) OVER (ORDER BY month) AS previous_month_revenue
    FROM monthly_revenue
)

SELECT
    month,
    revenue,
    previous_month_revenue,
    ROUND(
        (revenue - previous_month_revenue) / previous_month_revenue * 100,
        2
    ) AS percentage_change,
    CASE
        WHEN previous_month_revenue IS NULL THEN 'No previous data'
        WHEN revenue > previous_month_revenue THEN 'Increase'
        WHEN revenue < previous_month_revenue THEN 'Decrease'
        ELSE 'No change'
    END AS revenue_trend
FROM revenue_with_lag
ORDER BY month;
