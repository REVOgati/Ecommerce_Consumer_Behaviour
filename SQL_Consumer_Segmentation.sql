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

CREATE TABLE uniqueOrderID_Dataset(
	Order_ID INT,
	USER_ID INT
	)
	
INSERT INTO uniqueOrderID_Dataset(Order_ID,USER_ID)
	SELECT
				order_id,
				user_id
			FROM
				[dbo].[Modified_ECommerce_consumer_behaviour_dataset]
			GROUP BY
				order_id,
				user_id
			ORDER BY
				user_id

SELECT * FROM uniqueOrderID_Dataset

-- To check if the Column with Order_ID in new table has only unique values, we use the code below
SELECT Order_ID
FROM uniqueOrderID_Dataset
GROUP BY Order_ID
HAVING COUNT(*) > 1; -- Counts and return all rows appearing more than once ; if 0 rows print, the the column has only unique values




