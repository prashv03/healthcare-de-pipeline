# Healthcare Data Engineering Pipeline
A PySpark-based data engineering project that processes healthcare admission records through data cleaning, validation, incremental loading, and SQL analytics.

## Project Overview
This project demonstrates an end-to-end ETL workflow using PySpark, Google Sheets, Parquet, and PostgreSQL. It follows a Medallion-inspired architecture to organize raw data, cleaned data, and analytics-ready outputs.

## Architecture
**CSV / Google Sheets → Bronze → Silver → PostgreSQL → Gold Analytics**

- **Bronze:** Stores initial and incoming data snapshots in Parquet format.
- **Silver:** Cleans data types, trims text fields, validates records, and separates invalid records into quarantine.
- **PostgreSQL:** Stores historical records and processes incremental inserts and updates.
- **Gold:** Uses SQL queries to generate summaries for reporting and analysis.

## Key Features
- PySpark-based data transformation and cleaning.
- Data quality checks for missing values, invalid ages, negative billing, duplicate IDs, and invalid date ranges.
- Quarantine handling for records that fail date validation.
- Incremental data loading using PostgreSQL `INSERT ... ON CONFLICT DO UPDATE`.
- SQL analytics for admissions by medical condition, average billing by admission type, and monthly admissions.
- Data storage using Parquet and PostgreSQL.

## Technologies Used
- Python
- PySpark
- PostgreSQL
- SQL
- Google Colab
- Google Sheets
- Google Drive
- Git and GitHub

## Dataset
The project uses a curated healthcare admissions dataset derived from a publicly available dataset on Kaggle.
Source: [Healthcare Dataset — Kaggle](https://www.kaggle.com/datasets/prasad22/healthcare-dataset)
An additional batch was prepared to simulate incoming inserts and updates. Invalid records were retained separately for data quality demonstration.

## Validation
The expected results after processing the sample batch are:
- Historical records: 5,000
- Valid incoming updates: 50
- Valid new records: 40
- Invalid records quarantined: 10
- Final PostgreSQL records: 5,040
- Duplicate admission IDs: 0
- Invalid date ranges in PostgreSQL: 0

## Repository Structure
```text
healthcare-de-pipeline/
├── notebooks/
│   └── healthcare_etl_pipeline.ipynb
├── sql/
│   ├── 02_gold_analytics.sql
│   └── 03_validation_queries.sql
├── README.md
└── .gitignore
```

The notebook contains the pipeline implementation, while the SQL directory contains reusable analytics and validation queries.

## How to Run
1. Open the notebook in Google Colab.
2. Install the required Python libraries.
3. Mount Google Drive and authorize Google Sheets access.
4. Configure the Neon PostgreSQL connection using Colab Secrets.
5. Run the notebook cells in order to process the data, validate records, load PostgreSQL, and execute analytics.

## Security and Data Handling
Database credentials and private configuration values should be stored in Colab Secrets and must not be committed to GitHub. Raw datasets and private Google Sheets should not be uploaded to the repository.

## Learning Outcomes
This project demonstrates practical experience with ETL pipelines, Spark transformations, data quality validation, incremental database loading, PostgreSQL upserts, and SQL-based analytics.

