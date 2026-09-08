--Olist E-Commerce SQL Analysis
-- Brazilian E-Commerce Public Dataset by Olist
-- SQLite

-- ============================================
-- 1. CUSTOMER ANALYSIS
-- ============================================

-- Customer distribution by state
SELECT customer_state,COUNT(customer_id) AS customer_count FROM olist_customers_dataset GROUP BY customer_state ORDER BY customer_count DESC;

-- Repeat customers
SELECT customer_unique_id, COUNT(order_id) AS order_count FROM olist_customers_dataset JOIN olist_orders_dataset ON olist_customers_dataset.customer_id = olist_orders_dataset.customer_id GROUP BY customer_unique_id HAVING COUNT(order_id) > 1 ORDER BY order_count DESC;
-- ============================================
-- 2. SALES ANALYSIS
-- ============================================

-- Total product sales value
SELECT SUM(price) AS total_sales FROM olist_order_items_dataset;
-- Monthly sales performance
SELECT strftime('%Y-%m', order_purchase_timestamp) AS month, SUM(price) AS monthly_sales, COUNT(DISTINCT olist_orders_dataset.order_id) AS order_count, SUM(price) / COUNT(DISTINCT olist_orders_dataset.order_id) AS avg_order_value FROM olist_orders_dataset JOIN olist_order_items_dataset ON olist_orders_dataset.order_id = olist_order_items_dataset.order_id GROUP BY month ORDER BY monthly_sales DESC;
-- ============================================
-- 3. PRODUCT ANALYSIS
-- ============================================

-- Top product categories by sales value
SELECT product_category_name_english, SUM(price) AS total_sales, COUNT(*) AS items_sold, AVG(price) AS avg_price FROM olist_order_items_dataset JOIN olist_products_dataset ON olist_order_items_dataset.product_id = olist_products_dataset.product_id JOIN product_category_name_translation ON olist_products_dataset.product_category_name = product_category_name_translation.product_category_name GROUP BY product_category_name_english ORDER BY total_sales DESC LIMIT 10;
-- ============================================
-- 4. PAYMENT ANALYSIS
-- ============================================

-- Payment method usage
SELECT payment_type, COUNT(order_id) AS payment_count FROM olist_order_payments_dataset GROUP BY payment_type ORDER BY payment_count DESC;
-- ============================================
-- 5. REVIEW ANALYSIS
-- ============================================

-- Review score distribution
SELECT review_score, COUNT(review_id) AS review_count FROM olist_order_reviews_dataset GROUP BY review_score ORDER BY review_score ASC;
