# 🧱 DBT + Databricks + AWS Data Pipeline

## 📖 Project Overview
This project demonstrates a modern **data engineering workflow** using **dbt (Data Build Tool)** with **Databricks** as the data warehouse and **AWS S3** as the data lake.  

It transforms raw data from multiple sources — **orders**, **products**, **users**, and **reviews** — into analytics-ready gold tables for business reporting and insights.

The project follows the **Medallion Architecture** pattern (Bronze → Silver → Gold) to ensure data quality, scalability, and reliability.

---

## 🗂️ Data Pipeline Architecture

### 🪣 1. Landing Zone (AWS S3)
Raw datasets are stored in **AWS S3 buckets**, forming the ingestion layer for all data sources.

- Serves as the **data lake**  
- Holds unprocessed **raw files** (CSV)  
- Acts as the source for Databricks ingestion  

---

### 🥉 2. Bronze Layer (Databricks)
Data from S3 is ingested into **Databricks Delta tables** with minimal transformation.

- Basic cleaning and schema alignment  
- Ensures consistency across data sources  
- Acts as the foundation for downstream transformations  

---

### 🥈 3. Silver Layer (dbt Models)
Data is cleaned, standardized, and enriched in dbt models. Relationships between **products**, **users**, **orders**, and **reviews** are defined.

Example transformations:
- Removing duplicates  
- Standardizing column names and data types  
- Joining related datasets for analytics  

---

### 🥇 4. Gold Layer (Analytics Models)
Aggregated models are built to power reporting and dashboards.

Key gold models:
- `gold_daily_avg_rating` → Calculates daily average product ratings  
- `gold_daily_sales` → Tracks daily sales and order performance  
- `product_categories` → Summarizes products by category  

These models serve as the **single source of truth** for analytics and BI tools.

---

## 💡 Why Databricks as the Data Warehouse
I chose **Databricks** because it combines scalability, performance, and simplicity for data engineering tasks.

**Key reasons:**
- ⚙️ **Unified platform** for data engineering, analytics, and ML  
- 💾 **Delta Lake** provides ACID transactions and version control  
- 🚀 **Scalable** — handles large datasets and streaming data efficiently  
- 🧠 **Native dbt integration** — seamless SQL-based model execution and testing  
- 💰 **Cost-effective** by leveraging AWS S3 for storage while using compute only when needed  

---

## ☁️ Why AWS S3 for Data Storage
**AWS S3** was selected as the data lake for its flexibility and cost-efficiency.

**Benefits:**
- 🔒 Highly available and durable storage  
- 💰 Cost-effective for large data volumes  
- 🔗 Native integration with Databricks  
- ⚡ Supports future expansion with AWS Glue, Redshift, or Athena  

---

## 🧮 dbt Model Lineage

The following **lineage graph** shows the flow of data through the medallion layers — from raw ingestion to gold analytics models:

![dbt Lineage Graph](https://github.com/abigailmwanza/DBT_Databricks/blob/main/Images/Screenshot%202025-11-13%20at%2008.01.46.png)

**Legend:**
- 🟩 **Landing:** Raw data from AWS S3  
- 🟦 **Bronze:** Ingested and lightly cleaned data  
- 🔷 **Silver:** Transformed and enriched datasets  
- 🟦 **Gold:** Aggregated business-ready insights  

---

## ⚙️ Tools & Technologies

| Tool | Purpose |
|------|----------|
| 🧰 **dbt** | Data transformation, testing, and documentation |
| 💎 **Databricks** | Data warehouse and compute engine |
| ☁️ **AWS S3** | Data lake for raw and intermediate data |
| 🧱 **Delta Lake** | Reliable storage format with ACID transactions |
| 🧾 **GitHub** | Version control and project documentation |

---

## 📊 Example Business Insights
- ⭐ **Average product ratings** by day and category  
- 💰 **Daily sales trends** and conversion rates  
- 👥 **User purchase behavior** and engagement  
- 🏷️ **Product category performance** over time  

---

## 🚀 Next Steps
- Automate ingestion with **Databricks Jobs**  
- Schedule dbt runs via **Databricks Workflows** or **Airflow**  
- Visualize gold models in **Power BI** or **Tableau**  
- Add **dbt tests** and **documentation** for improved data governance  

---

## 🧭 Repository Structure






### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](https://getdbt.com/community) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
