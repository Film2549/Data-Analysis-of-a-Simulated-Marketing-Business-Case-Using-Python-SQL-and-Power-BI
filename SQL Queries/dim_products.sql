USE PortfolioProject_MarketingAnalytics;

SELECT 
* 
FROM dbo.products;

-- *************************

-- Query to categoriz products based on their price
SELECT 
	ProductID,
	ProductName,
	Price,
	Category,

	CASE -- This column categorizes the products into price categories : Low, Medium, or High.
		WHEN Price < 50 THEN 'Low'
		WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
		ELSE 'High'
	END AS PriceCategory

FROM
	dbo.products;