-- Universal Data Analyzer: Gold Layer Analytics
-- Creates executive-ready airline performance metrics

CREATE TABLE universal_analyzer_catalog.gold_airline_performance 
WITH (
  external_location = 's3://nishchay-universal-analyzer-2025/gold/airline-performance/',
  format = 'PARQUET'
) AS
SELECT 
    carrier,
    COUNT(*) as total_flights,
    ROUND(AVG(dep_delay), 2) as avg_departure_delay,
    ROUND(AVG(arr_delay), 2) as avg_arrival_delay,
    ROUND(AVG(distance), 0) as avg_flight_distance,
    SUM(CASE WHEN delay_category = 'Delayed' THEN 1 ELSE 0 END) as delayed_flights,
    ROUND(
        (SUM(CASE WHEN delay_category = 'Delayed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2
    ) as delay_percentage,
    MIN(fl_date) as first_flight_date,
    MAX(fl_date) as last_flight_date,
    ROUND(
        (COUNT(*) * 100.0 / SUM(COUNT(*)) OVER()), 2
    ) as market_share_percentage
FROM "universal_analyzer_catalog"."silver_flight_data_cleaned"
GROUP BY carrier
HAVING COUNT(*) > 100
ORDER BY total_flights DESC;
