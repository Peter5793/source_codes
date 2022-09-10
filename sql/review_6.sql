-- Manipulating values logical operators
SELECT 
EnglishProductName,
EnglishDescription,
Color,
[Status],
Class
FROM DimProduct
WHERE (Class <> 'h' or Class is NULL) AND [Status] IS NOT NULL