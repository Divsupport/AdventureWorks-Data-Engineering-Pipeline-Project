---------------------------------------------------------------------------------
-- CREATE VIEW TERRITORIES
-------------------------------------------------------------------------------

CREATE VIEW gold.Territories
AS
SELECT *


FROM

     OPENROWSET
        (

           BULK 'https://pstorageee.dfs.core.windows.net/silver/AdventureWorks_Territories/',
           FORMAT = 'PARQUET'

        ) as file1




---------------------------------------------------------------------------------
-- CREATE VIEW CALENDER
-------------------------------------------------------------------------------

CREATE VIEW gold.Calender
AS
SELECT *


FROM

     OPENROWSET
        (

           BULK 'https://pstorageee.dfs.core.windows.net/silver/Adventureworks_Calender/',
           FORMAT = 'PARQUET'

        ) as file2



---------------------------------------------------------------------------------
-- CREATE VIEW PRODUCT_SUBCATEGORIES
-------------------------------------------------------------------------------

CREATE VIEW gold.Product_Subcategories
AS
SELECT *


FROM

     OPENROWSET
        (

           BULK 'https://pstorageee.dfs.core.windows.net/silver/Product_Subcategories/',
           FORMAT = 'PARQUET'

        ) as file3




---------------------------------------------------------------------------------
-- CREATE VIEW Returns
-------------------------------------------------------------------------------

CREATE VIEW gold.Returns
AS
SELECT *


FROM

     OPENROWSET
        (

           BULK 'https://pstorageee.dfs.core.windows.net/silver/Returns/',
           FORMAT = 'PARQUET'

        ) as file4



---------------------------------------------------------------------------------
-- CREATE VIEW Sales
-------------------------------------------------------------------------------

CREATE VIEW gold.Sales
AS
SELECT *


FROM

     OPENROWSET
        (

           BULK 'https://pstorageee.dfs.core.windows.net/silver/Sales/',
           FORMAT = 'PARQUET'

        ) as file5


---------------------------------------------------------------------------------
-- CREATE VIEW products
-------------------------------------------------------------------------------

CREATE VIEW gold.products
AS
SELECT *


FROM

     OPENROWSET
        (

           BULK 'https://pstorageee.dfs.core.windows.net/silver/products/',
           FORMAT = 'PARQUET'

        ) as file6

