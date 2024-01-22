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

-- Returns 103,761 unique orders

-- Those with value 'NULL' in Days_Since_Prior_Order' Column, are those coming in for the first time to purchase.
-- They are flagged as new customers in the systems - We will replace NULL with value 0

UPDATE unique_OrderID_Dataset
SET Days_Since_Prior_Order = 0
WHERE Days_Since_Prior_Order IS NULL;


-- To check if the Column with Order_ID in new table has only unique values, we use the code below
SELECT Order_ID
FROM unique_OrderID_Dataset
GROUP BY Order_ID
HAVING COUNT(*) > 1; -- Counts and return all rows appearing more than once ; if 0 rows print, the the column has only unique values.

-- The data is collected over a long period of time, however the limit is set to 30 days.
-- Therefore, those users that only bought once in this period are given the value 30 in the days_since_prior_order column.

-- Therefore, those with 30 in the said column are not new users, but already established users,
-- that have not ordered in a long period.

-- However, those with 0 in the said column, are new users that have ordered for the first time.



SELECT COUNT(*) AS New_Users
FROM unique_OrderID_Dataset
WHERE Days_Since_Prior_Order = 0;

--The query return 8405

-- I found out that it is difficult to segement the users into new, returning or local,
--  as there was several instances,
-- where 1 unique user had the value 0 more than once in the Days_Since_Prior_Order e.g
-- Introducing grouping is not feasible as in this case, we expect to have many users sharing values in said column.

SELECT *
FROM unique_OrderID_Dataset
WHERE USER_ID = 7077;

-- This is a very siginificant Quality Issue and thus deleting all of such entries,
-- will result into wiping out of authenticity of the data.
-- However;
-- KEY INSIGHTS

-- Determined that are there are a total of 103,761 unique orders.
-- Clients with more than repeating values in the Days_Since_Prior_Order column,
--made more than 1 order in a day.
