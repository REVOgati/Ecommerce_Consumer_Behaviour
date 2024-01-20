/*1. Customer Segmentation:
- What are the distinct customer segments based on their purchasing behavior?
- How can we categorize customers as new, returning, or loyal?
*/
USE Ecommerce_Consumer_Behaviour_Data
GO

/* SELECT DISTINCT
    order_id,
	user_id
FROM
    [dbo].[Modified_ECommerce_consumer_behaviour_dataset] */

-- The code below does what above does but results in a new dataset used for future analysis.

----------------------------------------------
----------------------------------------------

-- The code below only selects order_id and user_id to avoid conflict
-- if other columns are included since we are aggregating the order_ids.

-- We group by order_id to get a column with only unique order_ids. 
--Then, we get another column of respective user_ids,
--where we can visibly see how many times a user has made an order.

-- This gives us a dataset with unique order_ids.

CREATE TABLE unique_OrderID_Dataset(
	Order_ID INT,
	USER_ID INT,
	Days_Since_Prior_Order INT
	)
	
INSERT INTO unique_OrderID_Dataset(Order_ID,USER_ID,Days_Since_Prior_Order)
	SELECT
				order_id,
				user_id,
				days_since_prior_order
			FROM
				[dbo].[Modified_ECommerce_consumer_behaviour_dataset]
			GROUP BY
				order_id,
				user_id,
				days_since_prior_order
			ORDER BY
				user_id

SELECT * FROM unique_OrderID_Dataset

-- Those with value 'NULL' in Days_Since_Prior_Order' Column, are those coming in for the first time to purchase.
-- They are flagged as new customers in the systems - We will replace NULL with value 0

UPDATE unique_OrderID_Dataset
SET Days_Since_Prior_Order = 0
WHERE Days_Since_Prior_Order IS NULL;

SELECT * FROM unique_OrderID_Dataset

-- To check if the Column with Order_ID in new table has only unique values, we use the code below
SELECT Order_ID
FROM unique_OrderID_Dataset
GROUP BY Order_ID
HAVING COUNT(*) > 1; -- Counts and return all rows appearing more than once ; if 0 rows print, the the column has only unique values.

