# **Analysis of Consumer Behaviour in an Ecommerce Grocery Business**

## Table of Contents

1. [Project Overview](#project-overview)
2. [Data Sources](#data-sources)
3. [Tools Used](#tools-used)
4. [Data Cleaning and Preparation](#data-cleaning-and-preparation)
5. [Exploratory Data Analysis](#exploratory-data-analysis)
    - [Customer Segmentation](#1-customer-segmentation)
    - [Product Purchase Insights](#2-product-purchase-insights)
    - [Time-related Patterns](#3-time-related-patterns)
    - [Cart Analysis](#4-cart-analysis)
6. [Data Visualization](#data-visualization)
7. [Findings](#findings)
8. [Limitations and Assumptions](#limitations-and-assumptions)
9. [Recommendations to Ecommerce Store and Conclusion](#recommendations-to-ecommerce-store-and-conclusion)
10. [References](#references)

---


### **PROJECT OVERVIEW**
	
**Bussiness Problem** : Improving customer retention and determining product purchase patterns.

**Description:**
- The dataset contains information about customer orders, including the day of the week, hour of the day, and days since the prior order.

 - We can use this data to analyze customer behavior and identify patterns related to purchase of different products.

 - The goal is to determine product purchase and re-ordering patterns in relation to consumer behaviour.

 - Therefore, the analysis will consists of the following target areas: 
   
	**1. Customer Segmentation:**\
 			- What are the distinct customer segments?\
        	- How can we categorize customers as new or existing?\
			-Purporse : To determine the general nature of the Online Store's Users.
   

	**2.Product purchase Insights:**\
			- Identify which products have the highest sales and re-ordering rate and vice-versa.\
			- Purporse : To identify the best performing and least performing products, and draw reasons behind this, to help in improving the business sales.

	**3. Time-related Patterns:**\
			- Explore the order time of the day and day of the week to identify peak shopping times.\
 			- Calculate which time of the 24hour clock are most orders made, and which ones.\
			-Purporse: To help in human resource scheduling and iventory planning.


	**4. Cart Analysis:**\

		    - Items per Cart: Explore the number of products added to a cart per order.\
			- Cart Abandonment: Identify instances where products are added to the cart but not purchased.
			- Purporse: Determine the rate of product abandonment and how to reduce this.


### **Data Sources**

- The dataset was sourced from a Kaggle account[Click here to view account](https://www.kaggle.com/hunter0007)

- The dataset is from a real E-commerce grocery store called ; 'Hunter's e-grocery for their orders in a given time period in the year 2023 as explained [here](https://www.kaggle.com/datasets/hunter0007/ecommerce-dataset-for-predictive-marketing-2023/data).

###	**Tools Used**

- **Cleaning and Preparation:** Python programming language was used for data cleaning and preparation. Python is powerful and efficient for handling large datasets.

- **Exploratory Data Analysis:** Python and SQL were utilized for data analysis and insights extraction.

- **Visualizations:** Tableau was used to effectively display findings.

- **Presentation:** Google Slides were employed to create a simplified explanation of the entire process, ensuring easy understanding even for those unfamiliar with data analysis.



### **Data Cleaning and Preparation**

   **Overview of the data**:

The dataset contains the following columns:

   - order_id - unique identity of order

   - user_id -unique identity of user/customer

   - order_number - Number OF THE ORDER

   - order_dow -Day of the Week the order was made(either 0,1,2,3,4,5,6) - '0' represents Monday and '6' represents Sunday

   - order_hour_of_day - Hour of the day order was made

   - days_since_prior_order - Days since prior order ; 0 for new customers, the rest depending on last day

   - product_id - unique ID of product that is part of an order

   - add_to_cart_order - Number of specific products added to cart as part of the order

   - reordered - If the re-order took place ( is in binary of 0 or 1)

   - department_id - specific department identity that an ordered product is part of.

   - department - name of department

   - product_name - name of product

	**Raw dataset**
	- For detailed information: [Click here to view and download original dataset](https://drive.google.com/file/d/1-6CzS3g7AOjxRwwndnUUHWhF5_Bec5Xn/view?usp=sharing)

The following are the steps in my data cleaning process:


	**Clean dataset** \
After cleaning and preparation process, the cleaned dataset was also uploaded in my Google Drive: [Click here to view and download clean dataset](https://docs.google.com/spreadsheets/d/1Fyxl9P_ApXpDl7CixTMg-Z0m8FMBve5D/edit?usp=drive_link&ouid=102527141955837924247&rtpof=true&sd=true)


### **Exploratory Data Analysis**

#### **1. Customer Segmentation:**
     
	- In the original dataset, the order_id column has duplicate values.\
	- This is because every order was brocken down to individual products contained in the specific order, leading to a repeat of a unique order.\
	- Thus, I combined the products in respective order batches in order to handle duplicate values.\
	
	- With this, I eliminated data duplication and was able to analyze the different groups of customers.\
	- Click to view the SQL file :  [https://github.com/REVOgati/Ecommerce_Consumer_Behaviour/blob/155c3faa481e21f0e32490816ee21f0323d13587/SQL_Consumer_Segmentation.sql](SQL_Consumer_Segmentation) \



#### **2. Product purchase Insights:**

    1. Which products are most ordered in specific departments in the dataset? - To determine the most and least purchased products in every department.\

		- I used SQL to group products by departments, and return the total number of orders of each product.\

		-A snapshot of the SQL code and the link:[https://github.com/REVOgati/Ecommerce_Consumer_Behaviour/blob/699fffc3648a992227998da47087a37e1e340930/sql_exploration_files/products_insights.sql](Product_purchase_insights)\

	- Which products are most re-ordered and vice-versa, and why? - To determine which products attract most purchases and vice-versa.

#### **3. Time-related Patterns:**

	- At what time of the 24hour day, are the highest orders made? - To help in human resource allocation\
    - At what day of the week are the highest orders made?\
	- What time of the day, is the most purchased products mostly ordered?\

	1. I grouped the items according to the values of the 24hour day to determine the time with highest orders.
	2. Since 0 represents Monday, and 6 represents Sunday, I used SQL to return number of orders for every day.
	3. I used an SQL code that returns the most ordered product, and its different purchase time periods.



#### **4. Cart Analysis:**

	- For every ordered item, I subtracted the number in the cart - order number to determine number of abandoned items and multiplied by 100\
	- This in order to get the percentange rate of cart abandonment.
	- I then stored the result in a new column 'abandoned_items'  and counted the total number per product.\
	

### **Data Visualization**

	- Visual representations are available on [Tableau Public](https://public.tableau.com/app/profile/gareth.tirop/viz/EcommerceStoreAnalysis_17080716552270/EcommerceStoreOrdersAnalysis).

### **Findings**

#### **Consumer Segmentation**
	- There 103,761 unique orders made.
	- Approximately 8,405 entries with value 0 in days_since_prior_order, indicating new users.
	- Majority of customers are returning users.

#### **Product purchase patterns**

	- The most top six most ordered products are 'fresh fruits', 'fresh vegetables','packaged vegetables' 'fruits', 'youghurt', 'milk' and 'packaged cheese' respectively.\
	- These six fall under the departments of either 'produce' or 'dairy eggs', each having three items.\

	- The least ordered products are 'frozen juice', 'shave needs', 'beauty', 'first aid', 'eye ear care' and 'kitchen supplies' respectively.\
	- Four of these items fall under the department 'personal care' with 'frozen' and 'household' having each one.

#### **Time-related patterns**
	1.  - The hours 10,11,14,15,13,12 have the highest number of orders.\
		-The hours 3,4,2,5,1,0 have the least number of orders.\
		- The above data can inform human resource allocation in the recommendations section below.\

	2.  - The highest number of orders are made on Friday while the least being made on Monday.\
		- This result may be attributed to factors only unique to the specific grocery store as much cannot be explained based of a global point of view.\
		

	3.	- The most ordered product is fresh fruits.

		- The time period 10am to 3pm has the highest number of orders for fresh fruits\
		- while the time period of 12am to 5am has the least number of orders for fresh fruits.\

#### **Cart Analysis**
	- All results were either less than 1% or a negative for the percentage rate of cart abandonment.\
	- This means that the percentage of users abandoning items they add to Cart is extremely low.\
	- Therefore, this is not a problem for this Ecommerce Store.\
	- An assumption may be, since most users are returning customers, they are well aware of the satisfying quality of the products they order.\
	- Or, due to essential nature of grocery items being sold.
	

	



### **Limitations and Assumptions**

	1. 	- There were many unique USER_IDs that had more than 1 occurence of the value 0 in the days_since_prior_order column.\
		-I assumed they may have made more than 1 order in their first day as the only possible explanation. \
		- I used filtering and grouping techniques to handle this and get the correct number of new users in the period.\

	2.  - The data is collected over a long period of time, however the limit is set to 30 days.\
		- Therefore, those users that only bought once in this period are given the value 30 in the 'days_since_prior_order' column.\
		- Therefore, those with 30 in the said column are not new users, but already established users,that have not ordered in a long period.\

### **Recommendations to Ecommerce Store and Conclusion**
1.**On products insights**\
	- Given that the departments 'produce' or 'dairy eggs' have the highest orders, I would recommend measures to ensure consistency of quality of these products as well as their availability.\
	- Given that the departments 'personal care', 'frozen' and 'household' have the lowest orders, measures should be put in place to promote products of these departments.\
	- They might include improvement of product quality, research from users, advertisements or discounts.

2. **Time-related**\
	- I would recommend that there should be a significantly higher number of human resource allocation of the employees in the period 10am - 3pm due to the higher number of orders.\
	 - Thus, there should be a smaller group at the hours 12am to 5am due to the lower number of orders.\
	 - This helps to balance the number of human resource against traffic in order to ensure optimality in performance.

3. **Consumer Segementation**\
	- 8% of all the customers are new users while the rest are exisiting users.\
	- This means that a very huge number of customers are returning.
	- I would recommend surveys to understand reasons for returning customers.

4. **Cart Analysis**\
	- The store does not have a major problem with cart abandonment as the average rate is at a percentage of less than 1%.\
	- This might be due to the essential nature of most of its products as groceries and household items are always very readily needed.



### **References**

- **Visualizations** : Path to my Tableau Dashboard for this project : [Ecommerce Store Viz](https://public.tableau.com/app/profile/gareth.tirop/viz/EcommerceStoreAnalysis_17080716552270/EcommerceStoreOrdersAnalysis)\

- ** Data Source** :\
	- The dataset was sourced from a Kaggle account[Click here to view account](https://www.kaggle.com/hunter0007)\

- The dataset is from a real E-commerce grocery store called ; 'Hunter's e-grocery for their orders in a given time period in the year 2023 as explained [here](https://www.kaggle.com/datasets/hunter0007/ecommerce-dataset-for-predictive-marketing-2023/data).


