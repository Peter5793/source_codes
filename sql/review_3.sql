-- return  a unique list of sales territory alphabetically
SELECT 
DISTINCT SalesTerritoryKey AS SalesTerritory
FROM FactInternetSales
ORDER BY SalesTerritoryKey ASC