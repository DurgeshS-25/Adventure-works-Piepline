
# Azure_Project

## Overview
This repository contains the implementation of a scalable **ETL pipeline** for processing and transforming data using **Azure Data Factory**, **Azure Databricks**, and **Azure Synapse Analytics**. The pipeline organizes data into Bronze, Silver, and Gold zones and visualizes insights using Power BI.

---

## Repository Structure
```
Azure_Project/
│
├── Dataset/                     # Contains the dataset used for the project
├── Silver_Layer_Script/         # Scripts for processing data into the Silver Zone
├── .gitignore                   # Git ignore file for sensitive and unnecessary files
├── Notes_Azure_project.txt      # Notes and documentation for the project setup
├── README.md                    # Project documentation (this file)
├── git.json                     # JSON file for Data Factory pipeline configuration
```

---

## Key Features
- **Data Ingestion:** Automated pipeline using Azure Data Factory to fetch data and load it into Azure Data Lake.
- **Data Transformation:** Scripts in Azure Databricks to transform data from Bronze to Silver Zone.
- **Data Querying:** External tables and views in Azure Synapse Analytics to structure and validate data.
- **Visualization:** Power BI dashboards to analyze trends and extract actionable insights.

---

## Installation and Setup

### Prerequisites
- An **Azure account** with permissions to create and manage resources.
- **Power BI Desktop** installed on your local system.

### Steps

1. **Set Up Azure Resources**
   - Create a **Resource Group**, **Storage Account**, and **Data Factory** in Azure Portal.

2. **Configure Azure Data Factory Pipelines**
   - Import `git.json` from the repository into Azure Data Factory.
   - Set up pipelines to load raw data into the Bronze Zone.

3. **Run Databricks Notebooks**
   - Navigate to the **Silver_Layer_Script/** folder for data transformation scripts.
   - Execute transformations for datasets like Customer, Product, and Sales.

4. **Configure Synapse Analytics**
   - Run SQL scripts to create external tables and views for Silver and Gold Zones.

5. **Visualize Insights**
   - Open Power BI and connect it to Azure Synapse Analytics.
   - Use Power BI to create dashboards analyzing the processed data.

---

## Technologies Used
- **Azure Services**: Data Factory, Databricks, Synapse Analytics, Data Lake
- **Programming Languages**: Python, SQL
- **Visualization**: Power BI
- **File Formats**: Parquet, JSON

---

## Future Enhancements
- Automate additional pipelines for real-time data ingestion.
- Integrate ML models for predictive analytics in the Gold Zone.
- Expand Power BI dashboards with advanced visualizations.

---

## Author
**Durgesh Sakhardande**  
- LinkedIn: [linkedin.com/in/durgesh-s/](https://linkedin.com/in/durgesh-s/)  
- GitHub: [github.com/DurgeshS-25](https://github.com/DurgeshS-25)
