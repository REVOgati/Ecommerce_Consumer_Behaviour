# **Analysis of Consumer Behaviour in an Ecommerce Grocery Business**

## *TABLE OF CONTENT*

### **PROJECT OVERVIEW**
	$$$$ *N/B : If this part is still here, it means i'm still working on this project. I have my README.md reminders here : Remember to add horizontal lines for organization and aesthetics for user.
**Bussiness Problem** : Improving customer retention and determining product purchase patterns.

**Description:**
- The dataset contains information about customer orders, including the day of the week, hour of the day, and days since the prior order.

 - We can use this data to analyze customer behavior and identify patterns related to purchase of different products.

 - The goal is to determine product purchase patterns and re-ordering in relation to consumer behaviour.

 - Therefore, the analysis will consists of the following:
   
	**1. Customer Segmentation:**\
 			- What are the distinct customer segments?\
        	- How can we categorize customers as new, returning, or loyal?
   

	**2.Product and Department Insights:**\
 			- Analyze the distribution of products across different departments.\
			- Identify which departments have the highest sales and reordering rates.\
			- Investigate which products and departments contribute the most to overall revenue.

	**3.Market Basket Analysis:**\
 			- Perform market basket analysis to identify product associations and frequently co-purchased products. This can inform cross-selling and bundling strategies.

	**4.Re-ordering patterns:**\
 			- Calculate the reordering rate for products


### **Data Sources**

- The dataset was sourced from a Kaggle account[Click here to view account](https://www.kaggle.com/hunter0007)

- The dataset is from a real E-commerce grocery store called ; 'Hunter's e-grocery for their orders in a given time period in the year 2023 as explained [here](https://www.kaggle.com/datasets/hunter0007/ecommerce-dataset-for-predictive-marketing-2023/data).

###	**Tools Used**

- __Cleaning and Preparation__: The dataset contains very many entries and I used **Python** programming language for the cleaning and preparation. Python programming is one of the most powerful tools in data analysis as it can handle thousands of entries without the possibility of crashing, unlike Excel.

- __Exploratory Data Analysis__: For the Data Analysis and insights drawing process, I used **Python** and **SQL** in order to improve my practise.

- __Visualizations__: I used both **R programming** and **Tableau** depending on the specific goals to effectively display my findings. 

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

- The main focus of this dataset and project is mainly on products and their related purchasing behaviour

- We still have a number of analysis focused on the buyers, but have limited paradigms based on lack of columns such as dates of user purchases among others.

**1. Customer Segmentation:**\
	- In the original dataset, the order_id column has duplicate values since we have the orders brocken down to individual products contained in a specific order. 
	- Therefore, I used SQL to create a sub-dataset with only unique entries in the order_id column + respective user_id entries in user_id column. + Days_since_prior_order column which is cohesive with the 2 columns without having any conflict

	- Click to view the SQL file :  [https://github.com/REVOgati/Ecommerce_Consumer_Behaviour/blob/155c3faa481e21f0e32490816ee21f0323d13587/SQL_Consumer_Segmentation.sql](SQL_Consumer_Segmentation)


**2.Product and Department Insights:**\