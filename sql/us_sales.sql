-- group for US sales in dollars
SELECT 
    dps.EnglishProductSubcategoryName AS SubCategory,
    SUM(fs.SalesAmount)  AS SalesAmount
FROM FactInternetSales AS fs 
    JOIN DimProduct AS dp
    ON fs.ProductKey = dp.ProductKey
    JOIN DimProductSubcategory AS dps 
    ON dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
    JOIN DimCurrency AS dc 
    ON dc.CurrencyKey = fs.CurrencyKey
    JOIN DimSalesTerritory AS dst 
    ON dst.SalesTerritoryKey = fs.SalesTerritoryKey

WHERE dc.CurrencyName = N'US Dollar' AND dst.SalesTerritoryCountry = N'United States'

GROUP BY dps.EnglishProductSubcategoryName
ORDER BY SalesAmount DESC


