# Amazon Athena Analytics Screenshots

This folder contains screenshots of Amazon Athena query execution and SQL-based analytics demonstrating business intelligence capabilities and data transformation processes.

## Screenshot 1: Athena Query Editor - Business Intelligence Analytics Execution

<img width="1920" height="944" alt="1" src="https://github.com/user-attachments/assets/2f9b4690-546a-49b6-98a1-d0499b4a70b8" />


**Description:**
AWS Athena Query Editor showcasing multiple analytical queries executed simultaneously, demonstrating comprehensive business intelligence workflow.

**Key Features Demonstrated:**
- **Account Verification**: AWS Account ID 8360-8561-9237 visible for authenticity
- **Multi-Query Environment**: 8 query tabs showing concurrent analytical processing capability
- **Business Intelligence Results**: Airline performance analysis showing carrier rankings with delay metrics
- **Query Performance**: Excellent execution metrics (127ms queue time, 747ms runtime, 2.32MB data scanned)
- **Real Data Output**: 10 airlines analyzed with comprehensive performance metrics including VX, HA, B6, OO, WN

**Analytics Results Displayed:**
- **Airline Performance Ranking**: Carriers sorted by delay percentage and operational metrics
- **Flight Volume Analysis**: Total flights ranging from 14,531 (VX) to 261,439 (WN)
- **Delay Performance**: Average departure and arrival delay calculations
- **Business KPIs**: Delay percentages and operational efficiency metrics

**Technical Excellence:**
- **Complex SQL Analytics**: Advanced aggregation queries with CASE statements and percentage calculations
- **Query Optimization**: Sub-second performance on millions of records
- **Concurrent Processing**: Multiple analytical queries running simultaneously
- **Cost Efficiency**: Minimal data scanning (2.32MB) for comprehensive airline analysis

---

## Screenshot 2: Gold Layer Table Creation - Advanced SQL Transformation

<img width="1920" height="949" alt="2" src="https://github.com/user-attachments/assets/8aa793d3-bd2b-4f0f-81ab-547eb81d95a9" />


**Description:**
Detailed view of CREATE TABLE AS SELECT (CTAS) query constructing the `gold_airline_performance` table with sophisticated aggregation logic.

**SQL Implementation Features:**
- **Executive Table Creation**: `CREATE TABLE universal_analyzer_catalog.gold_airline_performance`
- **Storage Optimization**: Parquet format with S3 gold layer location specification
- **Advanced Aggregations**: Complex business logic including COUNT, ROUND, AVG functions
- **Business Logic**: Delay categorization and percentage calculations for executive reporting
- **Performance Metrics**: 69ms queue time, 2,091 seconds runtime, 3.63MB data processed

**Gold Layer Architecture:**

CREATE TABLE universal_analyzer_catalog.gold_airline_performance
WITH (
external_location = 's3://nishchay-universal-analyzer-2025/gold/airline-performance/',
format = 'PARQUET'
) AS SELECT...


**Business Intelligence Logic:**
- **Carrier Performance**: Total flights and average delay calculations per airline
- **KPI Generation**: Delay percentages and operational efficiency metrics
- **Executive Metrics**: Pre-calculated analytics ready for C-level reporting
- **Date Range Analysis**: First and last flight date tracking for operational periods

**Technical Achievements:**
- **CTAS Implementation**: Create Table As Select for efficient data transformation
- **Storage Optimization**: Parquet format reducing storage costs and improving query performance
- **Business Logic Integration**: Complex CASE statements and mathematical calculations
- **Query Success**: Confirmed successful execution creating production-ready analytics table

---

## Professional Capabilities Demonstrated

### **Advanced SQL Analytics**
- **Complex Aggregations**: Multi-level GROUP BY with HAVING clauses for business filtering
- **Window Functions**: Percentage calculations and ranking analytics
- **Business Logic**: Domain-specific calculations for airline industry metrics
- **Performance Optimization**: Efficient query patterns minimizing data scanning costs

### **Data Transformation Excellence**
- **CTAS Operations**: Create Table As Select for efficient data layer creation
- **Storage Strategy**: Parquet optimization with proper S3 location management
- **Schema Design**: Business-ready table structures optimized for analytical queries
- **Data Quality**: Filtered and validated datasets ensuring analytical accuracy

### **Business Intelligence Generation**
- **Executive Reporting**: KPIs and metrics suitable for C-level presentations
- **Operational Intelligence**: Performance metrics enabling data-driven operational decisions
- **Market Analysis**: Competitive positioning and market share calculations
- **Self-Service Analytics**: Business users enabled to query pre-calculated metrics

### **Production-Ready Implementation**
- **Scalable Architecture**: Serverless processing handling millions of records efficiently
- **Cost Optimization**: Minimal data scanning with maximum analytical value
- **Query Performance**: Sub-second response times for complex business intelligence
- **Enterprise Integration**: Tables accessible across QuickSight, business applications, and reporting tools

---

## Technical Performance Summary

**Query Execution Metrics:**
- **Business Analytics Query**: 127ms queue + 747ms runtime = 874ms total execution
- **Gold Table Creation**: 69ms queue + 2,091s runtime for comprehensive data transformation
- **Data Processing Efficiency**: 2.32MB scanned for airline analysis, 3.63MB for table creation
- **Concurrent Processing**: Multiple analytical queries executed simultaneously

**Business Value Generated:**
- **Real-Time Insights**: Immediate airline performance analysis enabling rapid decision-making
- **Cost-Effective Analytics**: Pay-per-query model with optimized data scanning
- **Scalable Intelligence**: Architecture supporting growing analytical requirements
- **Executive Readiness**: Pre-calculated KPIs reducing complexity for business users

*These screenshots demonstrate production-ready, enterprise-grade SQL analytics capabilities generating meaningful business intelligence from complex datasets using AWS Athena's serverless processing power.*

