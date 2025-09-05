# Challenges & Solutions - Universal Data Analyzer

## Challenge 1: IAM Permissions Complexity
**Problem**: AWS Glue service role lacked S3 write permissions
**Solution**: Attached `AmazonS3FullAccess` policy to service role
**Learning**: Importance of understanding service vs user permissions

## Challenge 2: Data Quality Issues
**Problem**: Flight delay columns contained invalid time formats
**Solution**: Implemented data validation and adapted analytics focus
**Learning**: Real-world data requires robust quality checks

## Challenge 3: Cost Optimization
**Problem**: Athena query costs escalating with large datasets
**Solution**: Implemented Parquet compression and query optimization
**Learning**: Storage format significantly impacts query performance and cost

## Challenge 4: Schema Evolution
**Problem**: Dynamic datasets require flexible schema handling
**Solution**: Used AWS Glue crawler for automatic schema discovery
**Learning**: Automated schema management essential for scalable pipelines
