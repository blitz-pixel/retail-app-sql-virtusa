-- to get which item sold most
-- SELECT p.name
-- FROM order_items ot
-- JOIN products p on ot.product_id = p.product_id
-- GROUP BY ot.product_id
-- ORDER BY SUM(quantity) DESC
-- LIMIT 1;


-- to identify most valuble customer 
-- SELECT c.name, SUM((p.price *ot.quantity)) As total_spent, count(o.order_id) as total_orders 
-- FROM customers c
-- JOIN orders o on o.customer_id = c.customer_id
-- JOIN order_items ot on ot.order_id = o.order_id
-- JOIN products p on ot.product_id = p.product_id
-- group BY c.name
-- ORDER by total_spent;

-- Monthly revenue calculation
-- SELECT DATE_FORMAT(o.date_bought, '%Y-%m') as month ,SUM((p.price * ot.quantity)) as total_revenue
-- FROM orders o
-- join order_items ot on ot.order_id = o.order_id
-- JOIN products p on ot.product_id =  p.product_id
-- GROUP by month
-- order by month; 

-- Category-wise sales analysis
-- SELECT c.name,SUM(ot.quantity * p.price) as total_revenue,count(ot.product_id) as sales_count
-- FROM category c
-- join products p  on p.category_id = c.category_id
-- join order_items ot on ot.product_id = p.product_id
-- GROUP by c.category_id; 

-- Detect inactive customers
SELECT c.name, MAX(o.date_bought) as last_bought_moth,timestampdiff(month,max(o.date_bought),CURRENT_date) number_of_months_since_last_order 
FROM customers c
JOIN orders o on c.customer_id = o.customer_id
group by c.name
HAVING number_of_months_since_last_order >= 2
ORDER by number_of_months_since_last_order DESC;
