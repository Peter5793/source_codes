-- BASIC SQL QUERY WITH TOP N OFFSET FETCH FILTER

SELECT 
SalesOrderNumber AS InvoiceNumber,
OrderDate,
sum(SalesAmount) AS InvoiceSubtotal,
SUM(TaxAmt) AS TaxAmount,
SUM(OrderQuantity) AS TotalQuantity,
sum(SalesAmount) + Sum(TaxAmt) as InvoiceTotal

FROM  FactInternetSales
where SalesTerritoryKey = 6
--WHERE SalesOrderNumber = 'SO51182'
GROUP BY SalesOrderNumber, OrderDate
HAVING SUM(SalesAMount) > 1000

ORDER BY InvoiceSubtotal DESC

OFFSET 2 ROWS FETCH next 10 ROWS ONLY