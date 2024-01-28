USE Ecommerce_Consumer_Behaviour_Data
GO
-- Time-related Analysis
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