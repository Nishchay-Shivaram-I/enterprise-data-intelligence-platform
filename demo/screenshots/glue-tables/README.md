# AWS Glue Data Catalog Screenshots

This folder contains screenshots of AWS Glue Data Catalog implementation, showcasing automated schema discovery and metadata management for the Universal Analyzer project.

## Screenshot 1: AWS Glue Console - Data Catalog Tables Overview

<img width="1920" height="952" alt="1" src="https://github.com/user-attachments/assets/d6f2e740-1f32-47f9-b03e-5421ea4d0b69" />


**Description:**
AWS Glue Console displaying the complete table catalog with 4 successfully created tables across all data layers.

**Key Features Demonstrated:**
- **Account Verification**: AWS Account ID 8360-8561-9237 visible in top-right corner
- **Complete Catalog**: Shows bronze_csv, gold_airline_performance, gold_route_performance, and silver_flight_data_cleaned tables
- **Database Organization**: All tables properly organized under `universal_analyzer_catalog` database
- **Table Management**: Last updated timestamps showing recent successful processing (September 5, 2025)
- **Professional Structure**: Clean, organized data catalog following enterprise best practices

**Technical Significance:**
- Demonstrates successful crawler execution and table discovery across all data layers
- Shows proper metadata management with consistent naming conventions
- Proves automated schema detection working correctly for complex datasets

---

## Screenshot 2: Bronze Layer Table - Raw Data Schema Discovery

<img width="1920" height="946" alt="2" src="https://github.com/user-attachments/assets/08090910-7af9-4505-a7e7-843a9d8bc179" />


**Description:**
Detailed schema view of the `bronze_csv` table showing comprehensive metadata discovery of raw flight data.

**Schema Highlights:**
- **Column Count**: 65 columns automatically discovered by Glue crawler
- **Data Types**: Mixed data types including bigint, string properly identified
- **Raw Data Preservation**: Original column names and structures maintained (year, quarter, month, day_of_month, etc.)
- **Comprehensive Coverage**: Flight identifiers, timing data, route information, operational metrics
- **Last Updated**: September 5, 2025 at 14:24:24 showing recent processing

**Technical Achievements:**
- **Automated Discovery**: Glue crawler successfully identified complex schema without manual intervention  
- **Data Type Recognition**: Proper classification of numerical and string data types
- **Metadata Management**: Complete table properties and location mapping to S3
- **Schema Evolution**: Foundation for handling future data format changes

**Business Value:**
- **Data Governance**: Centralized metadata enabling data discovery and understanding
- **Self-Service Analytics**: Business users can explore available data attributes
- **Data Lineage**: Clear source table for downstream transformations

---

## Screenshot 3: Silver Layer Table - Cleaned Data Schema

<img width="1920" height="945" alt="3" src="https://github.com/user-attachments/assets/8edd555a-f36c-4f49-b581-3693fa4966ae" />


**Description:**
Schema details of the `silver_flight_data_cleaned` table showcasing business-ready, transformed data structure.

**Refined Schema Features:**
- **Optimized Column Count**: 15 essential columns selected for business analytics
- **Business-Friendly Names**: Clear naming like departure_time, arrival_time, flight_number
- **Enhanced Data Types**: Proper type optimization for analytical queries
- **Location Mapping**: Points to S3 silver layer with Parquet optimization
- **Processing Timestamp**: September 5, 2025 at 17:27:39 indicating recent transformation

**Data Transformation Evidence:**
- **Column Standardization**: Renamed columns for business clarity (dep_time → departure_time)
- **Data Enhancement**: Additional calculated fields for business logic
- **Quality Assurance**: Filtered and cleaned data ready for analytics
- **Storage Optimization**: Parquet format location for improved query performance

**Business Impact:**
- **Analytics Ready**: Clean, consistent data structure for immediate business use
- **Performance Optimized**: Efficient schema design enabling fast analytical queries
- **User Accessible**: Business-friendly column names reducing technical barriers

---

## Screenshot 4: Gold Layer Table - Executive Analytics Schema

<img width="1902" height="947" alt="4" src="https://github.com/user-attachments/assets/332851ef-185e-4920-8b63-6ab6cae7d69e" />


**Description:**
Schema view of the `gold_airline_performance` table displaying executive-ready business intelligence metrics.

**Executive Analytics Schema:**
- **Business Metrics**: 9 key performance indicators designed for executive reporting
- **KPI Columns**: carrier, total_flights, avg_departure_delay, avg_arrival_delay, delay_percentage
- **Strategic Data Types**: Double precision for accurate performance calculations
- **Executive Timing**: Last updated September 5, 2025 at 17:39:13 for current insights
- **Gold Layer Location**: Stored in optimized gold analytics directory

**Business Intelligence Features:**
- **Performance Metrics**: Comprehensive airline performance analysis ready for dashboards
- **Aggregated Insights**: Pre-calculated KPIs reducing executive query complexity  
- **Strategic Data**: Market share analysis and competitive intelligence metrics
- **Executive Reporting**: Schema optimized for C-level presentations and strategic planning

**Professional Capabilities:**
- **Business Logic Implementation**: Complex aggregations and percentage calculations
- **Executive Readiness**: Metrics suitable for board presentations and strategic decisions
- **Scalable Analytics**: Foundation supporting growing executive reporting requirements
- **Data-Driven Decisions**: Actionable insights enabling strategic business planning

---

## Technical Excellence Summary

These screenshots collectively demonstrate:

### **Automated Schema Management**
- Successful Glue crawler execution across Bronze-Silver-Gold layers
- Automated data type detection and schema evolution capabilities
- Professional metadata management following AWS best practices

### **Data Transformation Pipeline**
- **Bronze (65 columns)** → **Silver (15 columns)** → **Gold (9 columns)** optimization
- Progressive data refinement from raw ingestion to executive insights
- Proper column naming evolution from technical to business-friendly

### **Enterprise Data Governance**
- Centralized catalog serving as single source of truth for data definitions
- Consistent metadata management enabling team collaboration
- Professional table organization supporting scalable data operations

### **Business Intelligence Foundation**
- Executive-ready analytics with pre-calculated KPIs
- Self-service data discovery for business users
- Scalable architecture supporting organizational growth and evolving analytical requirements

*These screenshots provide comprehensive documentation of a production-ready, enterprise-grade data catalog implementation demonstrating advanced AWS Glue capabilities and professional data engineering expertise.*
