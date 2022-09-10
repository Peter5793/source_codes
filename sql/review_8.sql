-- Manipulating values conditional columns
SELECT 
    FirstName,
    IIF(MiddleName IS NULL, 'Unknown', MiddleName) AS MiddleName,
    ISNULL(MiddleName, 'UNKNOWN') AS MiddleName2,
    COALESCE(MiddleName, 'UNKNOWN') AS MiddleName3,
    LastName,
    YearlyIncome,
    EmailAddress,
    IIF(YearlyIncome > 50000, 'Above Average', 'Below Average') AS IncomeCategory, -- manipulating data in a column use IF with two statements
    CASE
        WHEN NumberChildrenAtHome = 0 THEN '0'
        WHEN NumberChildrenAtHome = 1 THEN '1'
        WHEN NumberChildrenAtHome BETWEEN 2 AND 4 THEN '2-4'
        WHEN NumberChildrenAtHome >= 5 THEN '5+'
        ELSE 'UNKWN'
    END AS NumberChildrenCategory,
    NumberChildrenAtHome as ActualChildren
from DimCustomer

WHERE IIF(YearlyIncome > 50000, 'Above Average', 'Below Average') = 'Above Average'
