SELECT TOP 100
    CONCAT(dc.FirstName, ' ', dc.LastName) AS CustomerName,
    dc.EmailAddress AS EmailAddress,
    SUM(fs.SalesAmount) AS AmountSpend
    --dcy.CurrencyName AS Cuurency
FROM FactInternetSales AS fs --1 STATEMENT TO BE EVAULATED
    INNER JOIN  DimCustomer AS dc
    ON fs.CustomerKey = dc.CustomerKey
    INNER JOIN DimCurrency AS dcy 
    ON fs.CurrencyKey = dcy. CurrencyKey

WHERE dcy.CurrencyName = N'US Dollar'
GROUP BY dc.FirstName, dc.LastName, dc.EmailAddress

--HAVING dcy.CurrencyName = N'US Dollar'

ORDER BY AmountSpend DESC