SELECT 
    CONCAT(FirstName,' ' ,LastName) AS CustomerName,
    EmailAddress,
    CASE
        
        WHEN NumberCarsOwned BETWEEN 2 AND 3 THEN '2 -3'
        WHEN NumberCarsOwned >= 4 THEN '4+'
    ELSE 'UNKWN'
    END AS NumbeofCarsOwned
FROM DimCustomer
WHERE HouseOwnerFlag = 1 AND NumberCarsOwned > 1