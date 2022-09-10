-- retrieve the the Invoice number with Currency Key as 100

SELECT
SalesOrderNumber AS InvoiceNumber,
SalesOrderLineNumber AS InvoiceLineNumber,
SalesAmount
FROM FactInternetSales
WHERE CurrencyKey = 100