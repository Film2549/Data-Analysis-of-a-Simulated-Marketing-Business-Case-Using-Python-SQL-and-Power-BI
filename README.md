# Data Analysis of a Simulated Marketing Business Case Using Python, SQL and Power BI

##  Overview

This project is inspired by a Youtube tutorial, where I apply and adapt the skills I've learned to analyze data from a simulated business scenario with a dataset made up of several tables. The goal is to solve three major business problems by finding insights and proposing possible solution. The process involves using data analysis skills and tools, including SQL (via SQL Server), Python, and PowerBI to analyze, clean and visualize the data. 

This project helps me understand the process, learn how to use programming languages in working pplication, and identify my mistakes to improve. It also shows me how data analysis can help solve real-world business challenges.

## Data sauce 

given in DataSauce folder ( as .bak file )


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

![image](https://github.com/user-attachments/assets/1fb5a7a7-746a-430b-8fb1-1ffd6cf89007)

**Tables used in this model**

- customers - Data related to each individual customers, their CustomerID, Age, etc.
- products - Data related to each individual products, their ProductID, price, etc.
- customer_journey - Data of every Jouney recorded by their CustomerID, ProductID, action such as View and Click etc.
- customer_reviews - Every review recorded and their reviewText.
- engagement_data - Data of every engagement relate to their ContentType.

## Query Data Using SQL



![image](https://github.com/user-attachments/assets/2055b705-376b-4276-9d3a-ee02600c2a36)

  








