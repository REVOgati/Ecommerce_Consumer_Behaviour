/*1. Customer Segmentation:
- What are the distinct customer segments based on their purchasing behavior?
- How can we categorize customers as new, returning, or loyal?
*/
USE Ecommerce_Consumer_Behaviour_Data
GO

SELECT * FROM dbo.Modified_ECommerce_consumer_behaviour_dataset

-- First, group by orderID in order to handle repeating instances of the same OrderID

CREATE PROCEDURE GroupingbyProc
	@TableName NVARCHAR(255),
	@ColumnName NVARCHAR(255)

	AS
	BEGIN
		--Declare SQL Query
		DECLARE @SqlQuery1 NVARCHAR(MAX)
		SET @SqlQuery1 = 'SELECT * FROM ' + QUOTENAME(@TableName) + N'GROUP BY' + QUOTENAME(@ColumnName);

		-- Executing the dynamic SQL Query

		EXEC sp_executesql @SqlQuery1;
	END
	GO

	--Executing the stored procedure - Grouping by OrderID

EXECUTE GroupingbyProc 'Modified_ECommerce_consumer_behaviour_dataset', 'order_id';
-- Create a re-usable Stored procedure 

CREATE PROCEDURE orderingProc
	@TableName NVARCHAR(255),
	@ColumnName NVARCHAR(255)

	AS
	BEGIN
		--Declare SQL Query
		DECLARE @SqlQuery NVARCHAR(MAX)
		SET @SqlQuery= N'SELECT * FROM ' + QUOTENAME(@TableName) + N'ORDER BY '+QUOTENAME(@ColumnName);

		-- Executing the dynamic SQL Query

		EXEC sp_executesql @SqlQuery;
	END
	GO

-- --------------------------------------------
----------------------------------------------------


SELECT
	order_id,
	user_id

FROM 
	[dbo].[Modified_ECommerce_consumer_behaviour_dataset]

GROUP BY
	order_id,
	user_id


-----------------------------------------------
------------------------------------------------Check to confirm which rows are eliminated

SELECT
	user_id,
	order_id

FROM 
	[dbo].[Modified_ECommerce_consumer_behaviour_dataset]

GROUP BY
	user_id,
	order_id

----------------------------------------------
----------------------------------------------

SELECT DISTINCT
    order_id,
	user_id
FROM
    [dbo].[Modified_ECommerce_consumer_behaviour_dataset]

