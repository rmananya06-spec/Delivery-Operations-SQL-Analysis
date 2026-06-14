-- Show All available Product Categories in Database. 
SELECT distinct product_category
FROM `delivery`.`delivery times`;
-- Show all cities in Database. 
SELECT distinct customer_city
FROM `delivery`.`delivery times`;
-- Show all orders in Database. 
SELECT COUNT(*) order_id
FROM `delivery`.`delivery times`;
-- -- Show cities with highest orders in Database. 
SELECT customer_city,
COUNT(*) AS count_of_orders
FROM `delivery`.`delivery times`
GROUP BY customer_city;
-- Checking if weather impact delivery times
SELECT weather_condition,
COUNT(actual_delivery_days) AS COUNT_DELIVERY
FROM `delivery`.`delivery times`
GROUP BY weather_condition;
-- Checking if weather impact delay times
SELECT weather_condition,
AVG(delay_days) AS delay_count
FROM `delivery`.`delivery times`
GROUP BY weather_condition ;
-- Checking if shipping modes impact delay times
SELECT shipping_mode,
AVG(delay_days) AS delay_count
FROM `delivery`.`delivery times`
GROUP BY shipping_mode;
