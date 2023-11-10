# **Analysis of Consumer Behaviour in an Ecommerce Grocery Business**

## *TABLE OF CONTENT*

### **PROJECT OVERVIEW**

**Bussiness Problem** : Improving customer retention and determining product purchase patterns.

**Description:**
- The dataset contains information about customer orders, including the day of the week, hour of the day, and days since the prior order.

 - We can use this data to analyze customer behavior and identify patterns related to purchase of different products.

 - The goal is to improve customer retention and determine product purchase patterns and re-ordering in relation to consumer behaviour.

 - Therefore, the analysis will consists of the following:
 		1.Customer Segmentation : 
 			- What are the distinct customer segments based on their purchasing behavior?
        	- How can we categorize customers as new, returning, or loyal?

 		2.Customer Retention
 			- What is the customer retention rate, and how can we improve it?
			- What strategies can be implemented to reduce churn among customers?

 		3.Product and Department Insights
 			- Analyze the distribution of products across different departments.
			- Identify which departments have the highest sales and reordering rates.
			- Investigate which products and departments contribute the most to overall revenue.

 		4.Market Basket Analysis
 			- Perform market basket analysis to identify product associations and frequently co-purchased products. This can inform cross-selling and bundling strategies.

 		5.Re-ordering patterns
 			- Calculate the reordering rate for products


### **Data Sources**

- The dataset was sourced from a Kaggle account[Click here to view account]().
- The dataset is said to be that of a grocery store in---- for their orders in a given time period in the year 2023 as explain[here]().

###	**Tools Used**

- _Cleaning and Preparation_: The dataset contains very many entries and I used **Python** programming language for the cleaning and preparation. Python programming is one of the most powerful tools in data analysis as it can handle thousands of entries without the possibility of crashing, unlike Excel.

- _Exploratory Data Analysis_: For the Data Analysis and insights drawing process, I used **SQL** in order to improve my practise.

- _Visualizations_: I used both **R programming** and **Tableau** depending on the specific goals to effectively display my findings. 

- _Presentation_: I used **Google slides** to create a simplified explanation of the entire process. This is in order to enable easy and direct understanding by of the project. The slides are made with clarity and simplification,in that, even one with zero knowledge of data analysis understands the steps taken in meeting the objectives. 


### **Data Cleaning and Preparation**

   **Overview of the data**:

The dataset contains the following columns:

   - order_id - unique identity of order

   - user_id -unique identity of user/customer

   - order_number - Number OF THE ORDER

   - order_dow -Day of the Week the order was made(either 0,1,2,3,4,5,6)

   - order_hour_of_day - Hour of the day order was made

   - days_since_prior_order - Days since prior order ; 0 for new customers, the rest depending on last day

   - product_id - unique ID of product that is part of an order

   - add_to_cart_order - Number of specific products added to cart as part of the order

   - reordered - If the re-order took place ( is in binary of 0 or 1)

   - department_id - specific department identity that a  product is part of

   - department - name of department

   - product_name - name of product

	**Raw dataset**

The dataset was too big to upload as part of my repository. Therefore,I used Google Drive as my storage area: [Click here to view raw dataset](url)

The following are the steps in my data cleaning process:


- Confirmation
	**Clean dataset**
After preparation process, the cleaned dataset was also uploaded in my Google Drive: [Click here to view clean dataset]()


### **Exploratory Data Analysis**

