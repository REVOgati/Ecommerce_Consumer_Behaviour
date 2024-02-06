USE Ecommerce_Consumer_Behaviour_Data
GO
-- Time-related Analysis

--1.  At what time of the 24hour day, are the highest orders made? - To help in human resource allocation
-- The code below returns the number of orders for a combine specific time in the 24hr day.
SELECT
	order_hour_of_day,
	COUNT(*) AS Number_of_Orders
FROM
	Modified_ECommerce_consumer_behaviour_dataset
GROUP BY
	order_hour_of_day 
ORDER BY
	Number_of_Orders DESC

--2.  At what day of the week are the highest orders made?
-- With 0 represnting Monday, and 6 representing Suday

SELECT
	order_dow,
	COUNT(*) AS Number_of_Orders
FROM
	Modified_Ecommerce_consumer_behaviour_dataset
GROUP BY
	order_dow
ORDER BY
	Number_of_Orders

-- 3. What time of the day, is the most purchased products mostly ordered and least?

-- First, we determine the most purchased product, then check its most ordered time.

SELECT
	department,
	product_name,
	SUM(order_number) AS Total_orders
FROM
	Modified_ECommerce_consumer_behaviour_dataset
GROUP BY
	department,
	product_name
ORDER BY
	Total_orders DESC
 -- The above query returns 'fresh fruits' as the most ordered product

SELECT
	order_hour_of_day,
	COUNT(*) AS Number_of_Orders
FROM
	Modified_ECommerce_consumer_behaviour_dataset
WHERE
	product_name = 'fresh fruits'
GROUP BY
	order_hour_of_day
ORDER BY
	Number_of_Orders DESC

--The 2 codes above can be combined as: 
-- It returns the most ordered products , then the different times it was ordered 
SELECT
    m.department,
    m.product_name,
    m.Total_orders,
    h.order_hour_of_day,
    COUNT(*) AS Number_of_Orders
FROM
    (
        SELECT TOP (1)
            department,
            product_name,
            SUM(order_number) AS Total_orders
        FROM
            Modified_ECommerce_consumer_behaviour_dataset
        GROUP BY
            department,
            product_name
        ORDER BY
            Total_orders DESC
        
    ) AS m
JOIN Modified_ECommerce_consumer_behaviour_dataset h
ON m.product_name = h.product_name
WHERE
    m.product_name = 'fresh fruits'
GROUP BY
    m.department,
    m.product_name,
    m.Total_orders,
    h.order_hour_of_day
ORDER BY
    Number_of_Orders DESC;
