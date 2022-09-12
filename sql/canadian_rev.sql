SELECT 
    da.AccountDescription AS Account,
    SUM(ff.Amount) AS Amount,
    SUM(ff.Amount)/
        (SELECT 
            SUM(Amount) AS Amount
            FROM FactFinance AS ff 
                    INNER JOIN  DimScenario AS ds 
                    ON ff.ScenarioKey = ds.ScenarioKey
                    INNER JOIN  DimAccount AS da 
                    ON ff.AccountKey = da.AccountKey
                    INNER JOIN DimOrganization AS do 
                    ON ff.OrganizationKey = do.OrganizationKey
                    INNER JOIN DimDate AS dd 
                    ON ff.DateKey = dd.DateKey
                WHERE ds.ScenarioName = N'Actual'
                    AND da.AccountType = N'Expenditures' 
                    AND do.OrganizationName = N'Canadian Division'
                    AND dd.CalendarYear = 2013
                ) AS AmountPercentage
FROM FactFinance AS ff 
    INNER JOIN  DimScenario AS ds 
    ON ff.ScenarioKey = ds.ScenarioKey
    INNER JOIN  DimAccount AS da 
    ON ff.AccountKey = da.AccountKey
    INNER JOIN DimOrganization AS do 
    ON ff.OrganizationKey = do.OrganizationKey
    INNER JOIN DimDate AS dd 
    ON ff.DateKey = dd.DateKey

WHERE ds.ScenarioName = N'Actual'
    AND da.AccountType = N'Expenditures' 
    AND do.OrganizationName = N'Canadian Division'
    AND dd.CalendarYear = 2013

GROUP BY da.AccountDescription
ORDER BY Amount DESC


