# Azure_Project

## Overview
This repository contains the implementation of a scalable **ETL pipeline** for processing and transforming data using **Azure Data Factory**, **Azure Databricks**, and **Azure Synapse Analytics**. The pipeline follows the **medallion architecture** (Bronze, Silver, and Gold zones) and provides insightful visualizations using Power BI.

---

## Repository Structure
```
Azure_Project/
│
├── Dataset/                     # Raw dataset files used for the project
│   ├── AdventureWorks_Calendar.csv
│   ├── AdventureWorks_Customers.csv
│   ├── AdventureWorks_Product_Categories.csv
│   ├── AdventureWorks_Product_Subcategories.csv
│   ├── AdventureWorks_Products.csv
│   ├── AdventureWorks_Returns.csv
│   ├── AdventureWorks_Sales_2015.csv
│   ├── AdventureWorks_Sales_2016.csv
│   ├── AdventureWorks_Sales_2017.csv
│   ├── AdventureWorks_Territories.csv
│   ├── git.json                 # Configuration file for Azure Data Factory
│
├── Silver_Layer_Script/         # Scripts for processing data into the Silver Zone
│   ├── Gold View/               # SQL scripts for Gold Zone schema and views
│   │   ├── Create External Tables.sql  # SQL script for creating external tables
│   │   ├── Gold_View.sql              # SQL script defining Gold Zone views
│   │   ├── Gold_schema.sql            # SQL script for creating Gold Zone schema
│   ├── Silver Layer Script.ipynb  # Jupyter notebook for Silver Zone transformations
│
├── Documentation/               # Notes and project-related documentation
│   ├── Notes_Azure_project.txt
│
├── Power BI/                    # Power BI reports and visualizations
│   ├── azure_project_basic_visualizations.pbix
│
├── .gitignore                   # Git ignore file for sensitive and unnecessary files
├── README.md                    # Project documentation (this file)
```

---

## Key Features
- **Data Ingestion**: Automated data ingestion pipelines using Azure Data Factory.
- **Data Transformation**: Process data from the Bronze Zone (raw) to the Silver Zone (cleaned and enriched) using Azure Databricks.
- **Data Querying**: External tables and views created in Azure Synapse Analytics for the Gold Zone.
- **Visualization**: Power BI dashboards to analyze trends, summarize data, and derive actionable insights.

---

## Installation and Setup

### Prerequisites
- **Azure account** with required permissions for managing resources.
- **Power BI Desktop** installed on your local machine.
- Familiarity with Azure Data Factory, Databricks, and Synapse Analytics.

### Steps

1. **Set Up Azure Resources**
   - Create a **Resource Group**, **Storage Account**, **Azure Data Factory**, and **Synapse Analytics workspace** in the Azure portal.

2. **Import Data Factory Pipelines**
   - Import `git.json` into Azure Data Factory to set up pipelines.
   - Configure pipelines to load raw data into the Bronze Zone.

3. **Execute Databricks Notebooks**
   - Open the `Silver_Layer_Script/` folder.
   - Run the `Silver Layer Script.ipynb` notebook in Databricks to process data into the Silver Zone.

4. **Set Up Synapse Analytics**
   - Use SQL scripts in the `Gold View/` folder to:
     - Create schemas for the Gold Zone.
     - Define external tables and views for querying data.

5. **Visualize Data in Power BI**
   - Open the `.pbix` file in the `Power BI/` folder to view and modify dashboards.
   - Connect Power BI to Azure Synapse Analytics for real-time data visualization.

---

## Technologies Used
- **Azure Services**: Data Factory, Databricks, Synapse Analytics, Data Lake Storage.
- **Languages and Tools**: Python, SQL, Jupyter Notebook.
- **Visualization**: Power BI.
- **File Formats**: CSV, Parquet, JSON.

---

## Future Enhancements
- Integrate real-time data ingestion pipelines using Azure Event Hub or IoT Hub.
- Implement Machine Learning models for predictive analytics within the Gold Zone.
- Expand Power BI dashboards to include more advanced and interactive visualizations.

---

## Contributors
- **Durgesh Sakhardande**
  - [LinkedIn](https://linkedin.com/in/durgesh-s/)
  - [GitHub](https://github.com/DurgeshS25-MLE)

- **Sudarshan Paranjape**
  - [LinkedIn](https://www.linkedin.com/in/sudarshanp4/)
  - [GitHub](https://github.com/sudarshan4120)

---

## Contact
If you have any questions or feedback, feel free to reach out via LinkedIn or GitHub.
