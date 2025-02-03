CREATE DATABASE SCOPED CREDENTIAL cred_durgesh
WITH
    IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://storageforazproject.blob.core.windows.net/silver',
    CREDENTIAL = cred_durgesh
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://storageforazproject.blob.core.windows.net/gold',
    CREDENTIAL = cred_durgesh
)


CREATE EXTERNAL FILE FORMAT format_parquet
WITH 
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)




----Creating external tables--------


CREATE EXTERNAL TABLE gold.extsales
WITH 
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet  
)
AS 
SELECT * FROM gold.sales



SELECT * FROM gold.extsales