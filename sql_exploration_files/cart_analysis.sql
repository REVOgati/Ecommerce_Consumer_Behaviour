-- Rate of abondment of items in cart

USE Ecommerce_Consumer_Behaviour_Data
GO

SELECT
	product_name,
	((SUM(add_to_cart_order - order_number)/SUM(add_to_cart_order))*100) AS abandonment_percentange
FROM
	dbo.Modified_ECommerce_consumer_behaviour_dataset
GROUP BY
	product_name
ORDER BY
	abandonment_percentange DESC

SELECT TOP(5) *
FROM dbo.Modified_ECommerce_consumer_behaviour_dataset
	