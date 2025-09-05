# Architecture

This folder contains all architecture-related documentation for the Universal Analyzer project, including:

## Contents

### 📁 diagrams/
- High-level system architecture diagrams
- Data flow visualizations
- Component interaction charts

### 📁 aws-screenshots/
- AWS Console screenshots documenting implementation
- Service configuration screenshots
- Query execution results
- Resource setup verification

## Overview

The Universal Analyzer implements a modern data lakehouse architecture on AWS:
```
Raw CSV Data → S3 Bronze → Glue Crawler → Data Catalog
↓
SQL Transformations → S3 Silver → Business Logic Applied
↓
Analytics Queries → S3 Gold → Executive Insights
```

## Key Components
- **Amazon S3**: Multi-tier storage (Bronze/Silver/Gold)
- **AWS Glue Data Catalog**: Metadata management and schema discovery
- **Amazon Athena**: Serverless SQL analytics engine
- **Manual SQL Transformations**: Athena-based data processing

These materials provide visual documentation of the cloud-based data processing architecture and demonstrate enterprise-level implementation skills.

