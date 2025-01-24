USE PortfolioProject_MarketingAnalytics;

SELECT 
*
FROM dbo.customers;

-- **********************

SELECT 
*
FROM dbo.geography;

-- **********************

-- SQL statement to join dim_customers with dim_geography to enrich customer data with geographic information
SELECT
	c.CustomerID,
	c.CustomerName,
	c.Email,
	c.Age,
	g.Country,
	g.City
FROM
	dbo.customers as c
LEFT JOIN 
	dbo.geography as g
ON c.GeographyID = g.GeographyID; -- Joins the two tables on the GeographyID field to match customers with their geographic infomation
