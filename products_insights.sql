-- Product Insights:

-- Identify which products have the highest sales and re-ordering rate and vice-versa.\
			-- Purporse : To identify reasons for best performing and least performing products.

USE Ecommerce_Consumer_Behaviour_Data
GO

SELECT * FROM Modified_ECommerce_consumer_behaviour_dataset

--1: Group by department and products, then let the total number of orders for each product be returned.

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
	department

-- With this, we can be able to know what product sells more in specific departments.
