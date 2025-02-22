SELECT TOP (1000) [Sales_Person]
      ,[Geography]
      ,[Product]
      ,[Amount]
      ,[Units]
      ,[cost_per_unit]
      ,[Cost]
      ,[Profit]
      ,[profit1]
  FROM [AdventureWorksDW2022].[dbo].[choclate protfolio project - 11]
  

SELECT *
FROM [choclate protfolio project - 11];

SELECT sum(Amount) AS Total_Sales
FROM [choclate protfolio project - 11];

SELECT COUNT (DISTINCT Geography) AS Count_Of_Country
FROM [choclate protfolio project - 11];

SELECT COUNT (DISTINCT Product) AS Count_Of_Product
FROM [choclate protfolio project - 11];


SELECT SUM(Profit) AS SUM_OF_Profits
FROM [choclate protfolio project - 11];


SELECT  Geography ,SUM(Amount)AS Total_Sales , SUM(Profit) AS Total_Profits
FROM [choclate protfolio project - 11]
GROUP BY Geography
ORDER BY Total_Sales DESC ,Total_Profits DESC ;

SELECT Sales_Person , SUM(Amount) AS Total_Sales , SUM(Profit) AS Total_Profits
FROM [choclate protfolio project - 11]
GROUP BY Sales_Person
ORDER BY Total_Sales DESC ,Total_Profits DESC ;


SELECT Product , Sum(Amount) AS Total_Sales , SUM(Profit) AS Total_Profits
FROM [choclate protfolio project - 11]
GROUP BY Product
ORDER BY Total_Sales DESC  ;


SELECT Product , SUM(Units) AS Sum_Of_Units , SUM(cost_per_unit) AS Sum_Of_Cost_Per_Unit , SUM(Cost) AS Sum_Of_cost
FROM [choclate protfolio project - 11]
GROUP BY Product
ORDER BY Sum_Of_Units DESC ;
