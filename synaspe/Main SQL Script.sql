CREATE DATABASE SCOPED CREDENTIAL Cred_sys
WITH

      IDENTITY = 'Managed identity'

------------------------------------------------

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(

   LOCATION = 'https://pstorageee.dfs.core.windows.net/silver',
   CREDENTIAL = Cred_sys

)

--------------------------------------------------------------

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(

   LOCATION = 'https://pstorageee.dfs.core.windows.net/gold',
   CREDENTIAL = Cred_sys

)


----------------------------------------------------------------

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(

    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'


)

-----------------------------------------------------------
-- CREATE EXTERNAL TABLE EXTSALES
------------------------------------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(

     LOCATION = 'extsales',
     DATA_SOURCE = source_gold,
     FILE_FORMAT = format_parquet

)
AS
SELECT * FROM gold.Sales


SELECT * FROM gold.extsales









