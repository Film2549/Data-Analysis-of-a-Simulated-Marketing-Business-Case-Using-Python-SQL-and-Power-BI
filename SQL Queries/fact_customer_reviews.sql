USE PortfolioProject_MarketingAnalytics;

SELECT 
*
FROM
	dbo.customer_reviews;

-- **********************

-- Query to clean whitespace issues in the reviewText column
SELECT
	ReviewID,
	CustomerID,
	ProductID,
	ReviewDate,
	Rating,
	REPLACE(ReviewText, '  ' , ' ') AS ReviewText  -- Cleans up ReviewText by replacing double spaces with single space to ensure the text is more readable and standardize.
FROM 
	dbo.customer_reviews;