# Lessons Learned

## Technical Lessons

### AWS Services Integration
- **Data-lake layering matters**: Treat the **Bronze → Silver → Gold** buckets as separate products with their own performance and cost optimizations.  
- **AWS Glue complexity**: Writing PySpark transformations required a solid grasp of **Spark DataFrames** and partitioning logic; under-estimating this led to early delays.  
- **Athena partitioning**: Thoughtful partition keys slashed query latency and cut costs by ~70 % during load tests.  

### Data Pipeline Challenges
- **Schema evolution**: Real-world data changes; adding an “upsert” pattern and nullable columns early prevented job failures.  
- **Data quality**: Systematic validation (row counts, NULL checks, business rules) at each layer saved days of retrospective debugging.  
- **Error handling**: Implementing retries and alerting (CloudWatch Alarms + SNS) turned silent failures into actionable notifications.  

### Cost Management
- **Right-sizing Glue DPUs**: Autoscaling from 2 → 5 DPUs for heavy loads, then back to 2, reduced monthly Glue spend by ~40 %.  
- **S3 storage classes**: Lifecycle rules that move infrequently accessed data from **Standard → Infrequent Access → Glacier** trimmed storage bills without hurting performance.  
- **Query discipline**: Avoiding `SELECT *` and adding `LIMIT` during dev prevented accidental full-table scans.  

---

## Development Process Insights

### Project Structure
1. **Documentation first** clarified scope and design, accelerating onboarding for new contributors.  
2. **Incremental delivery** (ingest → transform → analyze) exposed issues earlier than an “all-in-one” release would have.  
3. **Git branches** per feature kept `main` stable and CI/CD green.  

### Testing Strategy
- **Synthetic sample data** enabled rapid local tests while production data remained secure.  
- **Unit tests for transformations** caught 80 % of logic errors before hitting Glue.  
- **End-to-end validation** compared Bronze vs. Gold record counts to guarantee no data loss.  

---

## Business Understanding

### Stakeholder Communication
- **Architecture diagrams** proved more persuasive than lengthy technical docs for non-technical sponsors.  
- **Demo-driven reviews** every two weeks aligned expectations and surfaced hidden requirements early.  
- **Cost transparency** using AWS Cost Explorer dashboards built trust and justified cloud spending.  

### Analytics Insights
- **Dashboard minimalism**: Limiting each QuickSight page to 3–5 KPIs improved executive adoption.  
- **Real-time vs. batch**: Only 15 % of use-cases needed real-time; batching the rest saved compute costs.  
- **Data governance**: Defining data owners and IAM roles at project start avoided last-minute security audits.  

---

## Key Takeaways for Future Projects

### Technical Best Practices
- Implement **data-quality checks** at every hop.  
- **Design for failure**—assume retries, idempotency, and dead-letter queues are mandatory.  
- **Monitor everything**: metrics, logs, and custom business KPIs.  
- Adopt **Infrastructure as Code** (e.g., AWS CDK / Terraform) to ensure repeatability.  
- Centralize **structured logging** for faster root-cause analysis.  

### Project Management
- Start with an **MVP**, then iterate; avoid “big-bang” launches.  
- **Record decision logs**—future maintainers need the “why,” not just the “what.”  
- **Plan for scale**: test at 10× expected data volume.  
- **Security by design**: IAM least-privilege policies from day one.  
- **Celebrate small wins** to keep momentum and morale high.  
