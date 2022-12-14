SELECT 
    dp.EnglishProductName AS ProductName,
    dp.Color AS ProductColor,
    ISNULL(dp.[Size] , 'UNKNOWN')AS ProductSize,
    ISNULL(SUM(fs.SalesAmount), 0 ) AS SalesAmount

/*FROM FactInternetSales AS fs 
    RIGHT JOIN DimProduct AS dp 
    ON fs.ProductKey = dp.ProductKey */
FROM DimProduct AS dp 
    LEFT JOIN FactInternetSales AS fs 
    ON dp.ProductKey = fs.ProductKey

WHERE dp.[Status] = N'Current'
GROUP by dp.EnglishProductName, dp.Color, dp.[Size]
ORDER BY SalesAmount DESC

/* Test for all number of current products
SELECT 
    EnglishProductName
From DimProduct
WHERE [Status] = N'Current'
*/