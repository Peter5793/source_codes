-- query for Sales reps in Europe

SELECT 
    CONCAT(de.FirstName,' ', de.LastName) AS EmployeeName,
    de.Title AS EmployeeTitle,
    dc.CurrencyName AS Currency,
    SUM(fs.SalesAmount) AS SalesAMount

FROM FactResellerSales AS fs 
    JOIN DimEmployee AS de 
    ON fs.EmployeeKey = de.EmployeeKey
    JOIN DimSalesTerritory AS dst 
    ON fs.SalesTerritoryKey = dst.SalesTerritoryKey
    JOIN DimCurrency AS dc 
    ON fs.CurrencyKey = dc.CurrencyKey

WHERE dst.SalesTerritoryGroup = N'Europe'
AND de.[Status] = N'Current'
GROUP By de.FirstName , de.LastName, de.Title, dc.CurrencyName

ORDER by EmployeeName, SalesAMount DESC



