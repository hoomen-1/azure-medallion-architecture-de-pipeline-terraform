# Azure End-to-End Data Engineering with IaC (Cloud-Medallion-Architecture)

This project demonstrates an end-to-end Azure data engineering workflow using a Medallion Architecture (Bronze, Silver, Gold). Infrastructure is provisioned with Terraform (Infrastructure as Code), while Azure Data Factory is used to clean and transform the data in the cloud. Synthetic data is generated with Python, processed into structured layers, and finally visualized in Power BI to deliver business insights for analytics.

![Power BI Dashboard](Power%20BI/PowerBI.png)
Note: This project uses synthetic data. No sensitive or real-world data is included.

### Tech Stack

Cloud:  Azure

Storage: Azure Blob Storage 

ETL: Azure Data Factory

IaC: Terraform

Programming: Python 

Analytics: Power BI

### Data Architecture

The pipeline follows a medallion approach to ensure data quality:
1) Bronze (Raw Data): Raw synthetic sales data in CSV format.

2) Silver (Cleaned): Data Factory pipelines handle the cleaning process, schema enforcement, and handling of null values.

3) Gold (Business): Aggregated datasets optimized for reporting,data science and analytics, focusing on global sales performance.

### Features

- Infrastructure as Code: Entire Azure environment defined in Terraform for consistent, repeatable deployments.

- Modular Design: Scalable pipelines with automated dependency management (Data Flow activities).

- Medallion Architecture: Industry-standard data transformation layers.

### Repository Structure

/terraform: main.tf (HCL) for automated Azure resource provisioning.

/python_scripts: generatingdata.py (Script for generating 300 randomized sale records).

/adf_pipelines: azurepipeline.json (Definitions of the orchestrated Data Factory workflow).

/PowerBI: Power BI dashboard snapshots and insights.

