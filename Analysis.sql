-- a) Top 5 Customers by Total Spending

SELECT c.name, SUM(p.price * o.quantity) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;

-- b) Monthly Revenue Trend
SELECT TO_CHAR(order_date, 'YYYY-MM') AS month,
       SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- c) Most Sold Products
SELECT p.product_name, SUM(o.quantity) AS total_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- d) Customer Retention (New vs Repeat)
SELECT c.customer_id, c.name,
       COUNT(DISTINCT o.order_id) AS total_orders,
       CASE 
           WHEN COUNT(DISTINCT o.order_id) > 1 THEN 'Repeat'
           ELSE 'New'
       END AS customer_type
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_orders DESC;

-- e) Revenue by Payment Method
SELECT payment_method, SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY payment_method
ORDER BY revenue DESC;
