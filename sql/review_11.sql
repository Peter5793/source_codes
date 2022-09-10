-- sales for the period to christmas
SELECT 
    SalesOrderNumber AS InvoiceNumber,
    SalesOrderLineNumber AS InvoiceLineNumber,
    SalesAmount,
    TaxAmt,
    CAST(OrderDate AS date) AS Order_Date
FROM FactInternetSales
WHERE SalesTerritoryKey = 1 AND MONTH(CAST(OrderDate AS date)) = 12

--WHERE DATENAME(month, OrderDate) = N 'December' AND SalesTerritory = 1