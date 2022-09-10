-- Manipulating values logical operators
SELECT 
EnglishProductName,
EnglishDescription,
Color,
[Status],
Class,
SafetyStockLevel
FROM DimProduct
--WHERE Color IN ('Black', 'Silver', 'White', 'Yellow')
--WHERE (SafetyStockLevel >= 500 AND SafetyStockLevel <= 1000) AND [Status] IS NOT NULL (use this for dates)
WHERE SafetyStockLevel BETWEEN 500 and 1000 AND [Status] IS NOT NULL -- Between is inclusive to both ends
