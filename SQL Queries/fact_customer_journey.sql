USE PortfolioProject_MarketingAnalytics;

SELECT 
*
FROM dbo.customer_journey;

-- ****************************

-- Common Table Expression (CTE) to Identify and tag duplicate records
WITH DuplicateRecords AS (
	SELECT 
		JourneyID,
		CustomerID,
		ProductID,
		VisitDate,
		Stage,
		Action,
		Duration,
		-- Use ROW_NUMBER to assign a unique row number to each record within the partition defined below
		ROW_NUMBER() OVER(
			-- Rartition by groups the rows based on the specified columns that should be unique
			PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action
			-- ORDER BY defines how to order the rows within each partition (usually by unique identifier like journeyID)
			ORDER BY JourneyID
			) AS row_num -- This creates a new column 'row_num' that numbers each row within its partition
		FROM
			dbo.customer_journey
) -- WITH don't need to have semi-colon at the end

SELECT *
FROM DuplicateRecords
WHERE row_num > 1 -- Filter out the first occurence (row_num = 1) and **only shows the duplicates (row_num > 1)
ORDER BY JourneyID;

-- *****************************

-- From above, Outer query selects the final cleaned and standardized data

SELECT 
	JourneyID,
	CustomerID,
	ProductID,
	VisitDate,
	Stage,
	Action,
	COALESCE(Duration, avg_duration) AS Duration -- Replaces missing durations with the average duration for the corresponding date
FROM
	( 
		-- Subquery to process and clean the data
		SELECT 
			JourneyID,
			CustomerID,
			ProductID,
			VisitDate,
			UPPER(Stage) AS Stage,
			Action,
			Duration,
			AVG(Duration) OVER (PARTITION BY VisitDate) AS avg_duration, -- Calculate the average duration for each date, using only numeric values
			ROW_NUMBER() OVER (
				PARTITION BY CustomerID, ProductID, VisitDate, UPPER(Stage), Action  --Groups by these columns to identify duplicate records
				ORDER BY JourneyID
			) AS row_num -- assign a row number to each row within the partition to identify duplicate
		FROM 
			dbo.customer_journey
	) AS subquery 
WHERE 
	row_num = 1; -- keeps only the first occurence of each duplicate group indentified in the subquery