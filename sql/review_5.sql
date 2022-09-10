SELECT
ProductKey,
ProductAlternateKey,
EnglishProductName,
EnglishDescription,
CONCAT(EnglishProductName,'_',EnglishDescription) as ProductNameDescripition,
LEN(EnglishDescription) as DescriptionLength,
LEFT(ProductAlternateKey,2) AS ProductSHort,
RIGHT(ProductAlternateKey, LEN(ProductAlternateKey)-3) AS ProductAlternatekey2
from DimProduct
where ProductKey = 555
