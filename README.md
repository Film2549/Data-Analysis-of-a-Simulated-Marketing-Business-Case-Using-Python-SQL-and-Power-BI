![image](https://github.com/user-attachments/assets/172d6b96-0a80-4ad5-bc3e-eec57294450e)# Data Analysis of a Simulated Marketing Business Case Using Python, SQL and Power BI

##  Overview

This project is inspired by a Youtube tutorial, where I apply and adapt the skills I've learned to analyze data from a simulated business scenario with a dataset made up of several tables. The goal is to solve three major business problems by finding insights and proposing possible solution. The process involves using data analysis skills and tools, including SQL (via SQL Server), Python, and PowerBI to analyze, clean and visualize the data. 

This project helps me understand the process, learn how to use programming languages in working application, and identify my mistakes to improve. It also shows me how data analysis can help solve real-world business challenges.

## Data sauce 

given in [Data sauce](https://github.com/Film2549/Film-s-project/tree/main/Data%20source) folder ( as `.bak` file ).


## Built With

- [Python](https://www.python.org/)
- [Power BI](https://powerbi.microsoft.com/en-us/)
- [SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)

## Table Of Contents

- [Introduction to Business Problem](#introduction-to-business-problem)
- [Data Model](#data-model)
- [Query Data Using SQL](#query-data-with-sql)
- [Sentiment Analysis Using Python](#sentiment-analysis-using-python)
- [Building an Interactive Dashboard With Power BI](#building-an-interactive-dashboard-with-poer-bi)
- [Data Analysis](#data-analysis)
- [Credit](#credit)

## Introduction to Business Problem
Suppose that there are Simulated Market named ShopEasy, an online retail business, is facing reduced customer engagement and conversion rates. They are reaching out to you to help conduct a detailed analysis and identify areas for improvement in their marketing strategies.

![image](https://github.com/user-attachments/assets/09a2c1b4-b1ea-4eca-87c3-f8c80d0e46a1)

From reading above, I set that KPIs are 

- **Conversion Rate** : Percentage of website visitors who make a purchase.
- **Customer Engagement Rate** : Level of interaction with marketing content (clicks, likes, comments)
- **Customer Feedback Score** : Average rating from customer reviews.

So I provided my golds are
- **Increase Conversion Rates** : Identify factors impacting the conversion rate and provide recommendations to improve it.
- **Enhance Customer Engagement** : Determine which types of content make the highest engagement. 
- **Improve Customer Feedback Scores** : Understand common themes in customer reviews and provid actionable insights.

## Data Model

Defining an effective data structure in a dashboard is important. The images below show tables used in analysis.

![image](https://github.com/user-attachments/assets/0bc60b8d-a77b-4ab5-b9b2-0c482f5f0ac5)

**Tables used in this model**

- **customers** - Data related to each individual customers, their CustomerID, Age, etc.
- **products** - Data related to each individual products, their ProductID, price, etc.
- **customer_journey** - Data of every Jouney recorded by their CustomerID, ProductID, action such as View and Click etc.
- **customer_reviews** - Every review recorded and their reviewText.
- **engagement_data** - Data of every engagement relate to their ContentType.
- **geography** - GeographyID reference for mapping countries to their capital cities.

## Query Data Using SQL

Open and connect to my local database on my computer using Microsoft SQL Server Management Studio, then restore the `.bak` file and have database named PortfolioProject_MarketingAnalytics. Write an SQL statement for each table based on requirements. Below is a summary of the work I have completed.

![image](https://github.com/user-attachments/assets/2055b705-376b-4276-9d3a-ee02600c2a36)

- **customers** : Query to join dim_customers with dim_geography to enrich customer data with geographic information. The new table is `dim_customers`.
- **products** : Query to categoriz products based on their price. The new table is `dim_products`.
- **customer_journey** : Query to clean table by removing duplicates, handle missing values by replacing them with calculated averages then get a new table named `fact_customer_journey`.
- **customer_reviews** : Query to clean whitespace issues in the reviewText column. The new table is `fact_customer_reviews`.
- **engagement_data** : Query for Extracting and splitting combined metrics (Views and Clicks), formatting dates for uniformity, and standardizing values. The new table is `fact_engagement_data`.

You can see full codes in [SQL Queries](https://github.com/Film2549/Film-s-project/tree/main/SQL%20Queries) folder.

## Sentiment Analysis Using Python

In the fact_customer_reviews table, there are various review comments. I applied Python libraries to classify and categorize the comments into distinct categories. The nltk library and SentimentIntensityAnalyzer are important in classification of Sentiment. Additionally, pandas and pyodbc also play crucial roles.

![image](https://github.com/user-attachments/assets/73de611c-1c5b-415a-8131-13ed47e22d11)

**Steps**
1. **Import Libaries** : `Pandas` for data manipulation, `pyodbc` for database connection, and `nltk` for sentiment analysis.
2. **Fetch Data from SQL Server** : Connect to a Microsoft SQL Server database (PortfolioProject_MarketingAnalytics). Run a SQL query to fetch customer review data into a Pandas DataFrame.
3. **Calculate SentimentScore** : Initialize `VADER Sentiment Analyzer`, then analyze the ReviewText using VADER and calculate a compound sentiment scores (ranging from -1 to 1). Add `SentimentScore column` to the Dataframe.
4. **Categorize Sentiments** : Combine the sentiment score and the review's numerical Rating to classify each review into categories like Positive, Negative, Mixed Positive, etc. Add `SentimentCategory` column to the Dataframe.
5. **Bucket Sentiment Scores** : Group a Sentiment score into predefine text ranges such as 0.5 to 1.0 (Strongly Positive), 0.0 to 0.49 (Mildly Positive), etc. Add  `SentimentBucket` column to the Dataframe.
6. **Save the updated DataFrame to a new CSV file** named `fact_customer_reviews_with_sentiment.csv`.

you can view full code in [Python Code](https://github.com/Film2549/Film-s-project/tree/main/SQL%20Queries) folder.

## Building an Interface Dashboard in Power BI

Start making an Interface by importing every modified table before to Power BI, Then Making an Calender table for connect evey table having Date column ( Dax code in [Power BI Dashboard](https://github.com/Film2549/Film-s-project/tree/main/Power%20BI%20Dashboard) folder. ).

Set the Datatype for each columnn correctly to get the relationship of all tables as following :

![image](https://github.com/user-attachments/assets/1afbac43-f0f8-4da6-bedb-a0bddeb39cfe)

Creating a dashboard to display all Key Performance Indicators(KPIs), and complete with filtering options for years, months, and product name.

### Overview Page
Provides a comprehensive snapshot of key performance indicators (KPIs) such as conversion rate, social media engagement, and customer reviews.

![image](https://github.com/user-attachments/assets/71253ea6-ec9b-4221-946f-5f85bc363f79)

### Conversion Page
Analyze the conversion by differnt action and product-specific perfomance.

![image](https://github.com/user-attachments/assets/8f52cbf9-9db1-482e-ad82-3dc8290e3ff5)

### Social Media Page
Tracks social media important engagement result and the impact of content types.

![image](https://github.com/user-attachments/assets/5d4ce1c3-165d-42ef-8cfe-ba16d16cfc34)

### Customer Review Page 

Evaluate Customer feedback and rating to different products to find actionable insight.

![image](https://github.com/user-attachments/assets/d04e8596-a8e8-4ce3-856b-966ee131d639)

`.pbix` file and dashboard screen shot are in [Dashboard](https://github.com/Film2549/Film-s-project/tree/main/Dashboard) folder.

## Data Analysis









