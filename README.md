# **Analysis of Consumer Behaviour in an Ecommerce Grocery Business**

## *TABLE OF CONTENT*

### **PROJECT OVERVIEW**
	$$$$ *N/B : If this part is still here, it means i'm still working on this project. I have my README.md reminders here : Remember to add horizontal lines for organization and aesthetics for user.
**Bussiness Problem** : Improving customer retention and determining product purchase patterns.

**Description:**
- The dataset contains information about customer orders, including the day of the week, hour of the day, and days since the prior order.

 - We can use this data to analyze customer behavior and identify patterns related to purchase of different products.

 - The goal is to determine product purchase and re-ordering patterns in relation to consumer behaviour.

 - Therefore, the analysis will consists of the following 4 and their details to follow after in the phase: [Exploratory Data Analysis](#exploratory-data-analysis) to give you a full overview of the analysis process.
   
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

	**4.Market Basket Analysis:**\
 			- Perform market basket analysis to identify product associations and frequently co-purchased products.\
			- Purporse: To inform cross-selling and bundling strategies.

	**5. Cart Analysis:**\

		    - Items per Cart: Explore the number of products added to a cart per order.\
			- Cart Abandonment: Identify instances where products are added to the cart but not purchased.
			- Purporse: Determine the rate of product abandonment and how to reduce this.


### **Data Sources**

- The dataset was sourced from a Kaggle account[Click here to view account](https://www.kaggle.com/hunter0007)

- The dataset is from a real E-commerce grocery store called ; 'Hunter's e-grocery for their orders in a given time period in the year 2023 as explained [here](https://www.kaggle.com/datasets/hunter0007/ecommerce-dataset-for-predictive-marketing-2023/data).

###	**Tools Used**

- __Cleaning and Preparation__: The dataset contains very many entries and I used **Python** programming language for the cleaning and preparation. Python programming is one of the most powerful tools in data analysis as it can handle thousands of entries.

- __Exploratory Data Analysis__: For the Data Analysis and insights drawing process, I used **Python** and **SQL** in order to improve my practise.

- __Visualizations__: I used  **Tableau**  to effectively display my findings. 

- __Presentation__: I used **Google slides** to create a simplified explanation of the entire process. This is in order to enable easy and direct understanding by of the project. The slides are made with clarity and simplification,in that, even one with zero knowledge of data analysis understands the steps taken in meeting the objectives. 


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

The dataset was too big to upload as part of my repository. Therefore,I used Google Drive as my storage area: [Click here to view and download original dataset](https://drive.google.com/file/d/1-6CzS3g7AOjxRwwndnUUHWhF5_Bec5Xn/view?usp=sharing)

The following are the steps in my data cleaning process:


- Confirmation
	**Clean dataset**
After cleaning and preparation process, the cleaned dataset was also uploaded in my Google Drive: [Click here to view and download clean dataset](https://docs.google.com/spreadsheets/d/1Fyxl9P_ApXpDl7CixTMg-Z0m8FMBve5D/edit?usp=drive_link&ouid=102527141955837924247&rtpof=true&sd=true)


### **Exploratory Data Analysis**

- The main focus of this dataset and project is mainly on products and their related purchasing behaviour.


#### **1. Customer Segmentation:**
     
	- In the original dataset, the order_id column has duplicate values.\
	- This is bacause, for example, if an order has 3 products, the user_id and order_id are recorded 3 times, i.e for every product in the order.\
	- Thus, I combined the products in respective order batches in order to handle duplicate values.\
	
	- I used SQL to create a sub-dataset with only unique entries in the order_id column + respective user_id entries in user_id column. + Days_since_prior_order column which is cohesive with the 2 columns without having any conflict.\

	- Click to view the SQL file :  [https://github.com/REVOgati/Ecommerce_Consumer_Behaviour/blob/155c3faa481e21f0e32490816ee21f0323d13587/SQL_Consumer_Segmentation.sql](SQL_Consumer_Segmentation) \



#### **2. Product purchase Insights:**\

    1. Which products are most ordered in specific departments in the dataset? - To determine the most and least purchased products in every department.\

		- I used SQL to group products by departments, and return the total number of orders of each product.\

		-A snapshot of the SQL code and the link:[https://github.com/REVOgati/Ecommerce_Consumer_Behaviour/blob/699fffc3648a992227998da47087a37e1e340930/sql_exploration_files/products_insights.sql](Product_purchase_insights)\

	- Which products are most re-ordered and vice-versa, and why? - To determine which products attract most purchases and vice-versa.

#### **3. Time-related Patterns:**\
	- At what time of the 24hour day, are the highest orders made? - To help in human resource allocation\
    - At what day of the week are the highest orders made?\
	- What time of the day, is the most purchased products mostly ordered?\

	1. I grouped the items according to the values of the 24hour day to determine the time with highest orders.
	2. Since 0 represents Monday, and 6 represents Sunday, I used SQL to return number of orders for every day.
	3. I used an SQL code that returns the most ordered product, and its different purchase time periods.

#### **4. Market Basket Analysis:**\

	- Use of Apriori Algorithm - A Machine Learning algorithm tailed for many tasks, among them ; Market Basket Analysis.

#### **5. Cart Analysis:**\

	- For every ordered item, I subtracted the number in the cart - order number to determine number of abandoned items and multiplied by 100\
	- This in order to get the percentange rate of cart abandonment.
	- I then stored the result in a new column 'abandoned_items'  and counted the total number per product.\
	

### **Data Visualization**

	- The data is visually represented in Tableau Public. [Click here to view](https://public.tableau.com/app/profile/gareth.tirop/viz/EcommerceStoreAnalysis_17080716552270/EcommerceStoreOrdersAnalysis)

### **Findings**

#### **Consumer Segmentation**

	- A new user is that who has a value of 0 on the days_since_prior_order column as this is their first ever order.\
	- Existing users are the rest. To note is, there is repetitions of various USER_IDs with different values.\

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
		

	3.	- The most ordered product is fresh fruits. According to my analysis, it is most ordered at the hours 10,15,11,14,13,12 respectively and least ordered at the hours 3,4,2,5,1,0.\

		- Thus the time period 10am to 3pm has the highest number of orders for fresh fruits\
		- while the time period of 12am to 5am has the least number of orders for fresh fruits.\

		- This may be attributed by the following normal world assumptions:\
			i. Can the many orders between 10am - 3pm be attributed to fact that the sun shines the most at this time and may induce cravings for fresh fruits? (Assuming the data was collected during a season with sunny weather).\
			ii.  Hardly does anyone think about fruits past midnight as most orders at this time are mainly warm food or beverages attributing to the low number of orders at 12am - 5am.

#### **Cart Analysis**
	- All results were either less than 1% or a negative for the percentage rate of cart abandonment.\
	- This means that the percentage of users abandoning items they add to Cart is extremely low.\
	- Therefore, this is not a problem for this Ecommerce Store.\
	- An assumption may be, since most users are returning customers, they are well aware of the satisfying quality of the products they order.

			



### **Limitations and Assumptions**

	1. 	- There were many unique USER_IDs that had more than 1 occurence of the value 0 in the days_since_prior_order column.\
		-I assumed they may have made more than 1 order in their first day as the only possible explanation. \
		- I used filtering and grouping techniques to handle this and get the correct number of new users in the period.\

	2.  - The data is collected over a long period of time, however the limit is set to 30 days.\
		- Therefore, those users that only bought once in this period are given the value 30 in the 'days_since_prior_order' column.\
		- Therefore, those with 30 in the said column are not new users, but already established users,that have not ordered in a long period.\

### **Recommendations**
1.**On products insights**\

2. **Time-related**\
	  - There should be a significantly higher number of human resource allocation of the employees in the period 10am - 3pm due to the higher number of orders.\
	- Thus, the should be a smaller group at the hours 12am to 5am due to the lower number of orders.


### **References**

- **Visualizations** : Path to my Tableau Dashboard for this project : [Ecommerce Store Viz](https://public.tableau.com/app/profile/gareth.tirop/viz/EcommerceStoreAnalysis_17080716552270/EcommerceStoreOrdersAnalysis)\

- ** Data Source** :\
	- The dataset was sourced from a Kaggle account[Click here to view account](https://www.kaggle.com/hunter0007)\

- The dataset is from a real E-commerce grocery store called ; 'Hunter's e-grocery for their orders in a given time period in the year 2023 as explained [here](https://www.kaggle.com/datasets/hunter0007/ecommerce-dataset-for-predictive-marketing-2023/data).


