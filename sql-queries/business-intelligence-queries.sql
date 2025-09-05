-- Universal Data Analyzer: Business Intelligence Analytics
-- Executive-level insights for airline industry analysis

-- Query 1: Airline Market Share Analysis
SELECT 
    carrier,
    COUNT(*) as total_flights,
    ROUND(AVG(distance), 0) as avg_flight_distance,
    COUNT(DISTINCT origin) as departure_airports,
    COUNT(DISTINCT dest) as destination_airports,
    ROUND(
        (COUNT(*) * 100.0 / SUM(COUNT(*)) OVER()), 2
    ) as market_share_percentage
FROM "universal_analyzer_catalog"."silver_flight_data_cleaned"
GROUP BY carrier
ORDER BY total_flights DESC;

-- Query 2: Route Performance Analysis  
SELECT 
    origin,
    dest,
    CONCAT(origin, ' → ', dest) as route,
    COUNT(*) as total_flights,
    COUNT(DISTINCT carrier) as competing_airlines,
    ROUND(AVG(distance), 0) as route_distance_miles
FROM "universal_analyzer_catalog"."silver_flight_data_cleaned"
GROUP BY origin, dest
HAVING COUNT(*) > 100
ORDER BY total_flights DESC
LIMIT 20;

-- Query 3: Flight Distance Distribution
SELECT 
    CASE 
        WHEN distance < 500 THEN 'Short Haul (<500mi)'
        WHEN distance < 1500 THEN 'Medium Haul (500-1500mi)'
        ELSE 'Long Haul (>1500mi)'
    END as flight_category,
    COUNT(*) as flight_count,
    ROUND(AVG(distance), 0) as avg_distance,
    COUNT(DISTINCT carrier) as airlines_operating
FROM "universal_analyzer_catalog"."silver_flight_data_cleaned"
GROUP BY 
    CASE 
        WHEN distance < 500 THEN 'Short Haul (<500mi)'
        WHEN distance < 1500 THEN 'Medium Haul (500-1500mi)'
        ELSE 'Long Haul (>1500mi)'
    END
ORDER BY avg_distance;
