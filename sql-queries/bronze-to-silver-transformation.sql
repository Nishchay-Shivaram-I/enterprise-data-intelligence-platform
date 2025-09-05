-- Universal Data Analyzer: Bronze to Silver Transformation
-- This query demonstrates data cleaning and business logic application

CREATE TABLE universal_analyzer_catalog.silver_flight_data_cleaned 
WITH (
  external_location = 's3://nishchay-universal-analyzer-2025/silver/flight-data-cleaned/',
  format = 'PARQUET'
) AS
SELECT 
    year,
    month,
    day_of_month,
    fl_date,
    dep_time as departure_time,
    arr_time as arrival_time,
    carrier,
    fl_num as flight_number,
    origin,
    dest,
    distance,
    dep_delay,
    arr_delay,
    -- Business logic: Flight timing classification
    CASE 
        WHEN dep_time > 1800 THEN 'Evening'
        WHEN dep_time > 1200 THEN 'Afternoon' 
        WHEN dep_time > 600 THEN 'Morning'
        ELSE 'Early Morning'
    END as flight_status,
    -- Business logic: Delay categorization
    CASE 
        WHEN dep_delay > 15 THEN 'Delayed'
        WHEN dep_delay < 0 THEN 'Early'
        ELSE 'On Time'
    END as delay_category
FROM "universal_analyzer_catalog"."bronze_csv"
WHERE distance > 0 
    AND dep_time IS NOT NULL 
    AND arr_time IS NOT NULL
    AND cancelled = 0;
