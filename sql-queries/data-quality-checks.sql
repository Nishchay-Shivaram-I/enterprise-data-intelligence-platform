-- Universal Data Analyzer: Data Quality Validation
-- Comprehensive data quality checks for flight dataset

-- Basic record counts and completeness
SELECT 
    'Total Records' as metric,
    COUNT(*) as value
FROM "universal_analyzer_catalog"."bronze_csv"

UNION ALL

SELECT 
    'Unique Flight Numbers' as metric,
    COUNT(DISTINCT fl_num) as value
FROM "universal_analyzer_catalog"."bronze_csv"

UNION ALL

SELECT 
    'Cancelled Flights' as metric,
    COUNT(CASE WHEN cancelled = 1 THEN 1 ELSE NULL END) as value
FROM "universal_analyzer_catalog"."bronze_csv"

UNION ALL

SELECT 
    'Average Distance' as metric,
    ROUND(AVG(distance), 0) as value
FROM "universal_analyzer_catalog"."bronze_csv"

UNION ALL

SELECT 
    'Records with Valid Times' as metric,
    COUNT(CASE WHEN dep_time IS NOT NULL AND arr_time IS NOT NULL THEN 1 ELSE NULL END) as value
FROM "universal_analyzer_catalog"."bronze_csv";

-- Data completeness by column
SELECT 
    'dep_time' as column_name,
    COUNT(*) as total_records,
    COUNT(dep_time) as non_null_records,
    ROUND((COUNT(dep_time) * 100.0 / COUNT(*)), 2) as completeness_percentage
FROM "universal_analyzer_catalog"."bronze_csv"

UNION ALL

SELECT 
    'arr_time' as column_name,
    COUNT(*) as total_records,
    COUNT(arr_time) as non_null_records,
    ROUND((COUNT(arr_time) * 100.0 / COUNT(*)), 2) as completeness_percentage
FROM "universal_analyzer_catalog"."bronze_csv"

UNION ALL

SELECT 
    'distance' as column_name,
    COUNT(*) as total_records,
    COUNT(distance) as non_null_records,
    ROUND((COUNT(distance) * 100.0 / COUNT(*)), 2) as completeness_percentage
FROM "universal_analyzer_catalog"."bronze_csv";
