# Data Analysis of a Simulated Marketing Business Case Using Python, SQL and Power BI

##  Overview

This project is inspired by a Youtube tutorial, where I apply and adapt the skills I've learned to analyze data from a simulated business scenario with a dataset made up of several tables. The goal is to solve three major business problems by finding insights and proposing possible solution. The process involves using data analysis skills and tools, including SQL (via SQL Server), Python, and PowerBI to analyze, clean and visualize the data. 

This project helps me understand the process, learn how to use programming languages in working pplication, and identify my mistakes to improve. It also shows me how data analysis can help solve real-world business challenges.

## Data sauce 

given in DataSauce folder ( as `.bak` file )


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

- customers - Data related to each individual customers, their CustomerID, Age, etc.
- products - Data related to each individual products, their ProductID, price, etc.
- customer_journey - Data of every Jouney recorded by their CustomerID, ProductID, action such as View and Click etc.
- customer_reviews - Every review recorded and their reviewText.
- engagement_data - Data of every engagement relate to their ContentType.
- geography - GeographyID reference for mapping countries to their capital cities.

## Query Data Using SQL

Open and connect to my local database on my computer using Microsoft SQL Server Management Studio, then restore the `.bak` file and have database named PortfolioProject_MarketingAnalytics. Write an SQL statement for each table based on requirements. Below is a summary of the work I have completed.

![image](https://github.com/user-attachments/assets/2055b705-376b-4276-9d3a-ee02600c2a36)

- customers : Query to join dim_customers with dim_geography to enrich customer data with geographic information. The new table is *dim_customers*.
- products : Query to categoriz products based on their price. The new table is *dim_products*.
- customer_journey : Query to clean table by removing duplicates, handle missing values by replacing them with calculated averages then get a new table named *fact_customer_journey*.
- customer_reviews : Query to clean whitespace issues in the reviewText column. The new table is *fact_customer_reviews*.
- engagement_data : Query for Extracting and splitting combined metrics (Views and Clicks), formatting dates for uniformity, and standardizing values. The new table is *fact_engagement_data*.

You can see full codes in [SQL Queries folder].








