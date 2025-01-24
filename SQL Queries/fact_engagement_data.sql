USE PortfolioProject_MarketingAnalytics;

SELECT
*
FROM dbo.engagement_data

-- ******************

-- Query to clean and normalize the engagement_data table
SELECT 
	EngagementID,
	ContentID,
	CampaignID,
	ProductID,
	UPPER(REPLACE( ContentType, 'Socialmedia' , 'Social Media')) AS ContentType, -- Replace "Socialmedia" with "Social Media" and then convert all ContentType values to uppercase.
	LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) -1) AS Views, -- Extracts the Views part from the ViewsClicksCombined column by taking the substring before '-' character
	Right(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS Clicks, -- Extracts the Clicks part from the ViewsClicksCombined column by taking the substring after the '-' character
	Likes,
	FORMAT(CONVERT(DATE,EngagementDate), 'yyyy-MM-dd') AS EngagementDate -- Converts and formats the date as dd.mm.yyyy
FROM 
	dbo.engagement_data
WHERE
	ContentType != 'Newsletter'; -- Filters out rows where ContentType is 'Newsletter' sa these are not relevant for my analysis.