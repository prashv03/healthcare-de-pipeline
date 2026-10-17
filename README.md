# Healthcare Data Engineering Pipeline
A beginner-friendly data engineering project built using Python, PySpark, and PostgreSQL to clean, process, and analyze healthcare admission data.

## About the Project
This project processes healthcare admission data using an ETL pipeline. It includes data cleaning, data quality checks, handling invalid records, incremental data loading, and SQL-based analysis.

## Technologies Used
- Python
- PySpark
- SQL
- PostgreSQL
- Google Colab
- Google Sheets
- Google Drive

## Project Structure

```text
healthcare-de-pipeline/
├── data/
│   ├── healthcare_admissions_curated_5000.csv
│   └── healthcare_incremental_test_batch.csv
├── notebooks/
│   └── healthcare_etl_pipeline.ipynb
├── sql/
│   ├── 02_gold_analytics.sql
│   └── 03_validation_queries.sql
├── .gitignore
└── README.md
```

## Features
- Data cleaning and transformation using PySpark.
- Data quality checks for missing values, duplicate IDs, and invalid dates.
- Separate storage for invalid records.
- Historical data loading and incremental updates using PostgreSQL.
- SQL queries for healthcare data analysis.

## Before Running the Project
1. Download or clone this repository.
2. Open `notebooks/healthcare_etl_pipeline.ipynb` in Google Colab.
3. Install the required libraries mentioned in the notebook.
4. Upload `healthcare_admissions_curated_5000.csv` to your Google Drive project folder.
5. Import `healthcare_incremental_test_batch.csv` into Google Sheets and name the worksheet `incoming_changes`.
6. Configure Google Drive and Google Sheets access in Colab.
7. Set up a PostgreSQL database and store its connection string in Colab Secrets as `NEON_DATABASE_URL`.

## How to Run
Run the notebook cells in order. The pipeline will read the data, save Parquet snapshots, clean and validate records, load data into PostgreSQL, apply incremental updates, and execute SQL analytics.

## Dataset
The sample dataset is based on the publicly available [Healthcare Dataset on Kaggle](https://www.kaggle.com/datasets/prasad22/healthcare-dataset). The repository also includes an incremental batch for testing insert and update operations.

## Author
Created as a learning project to practice data engineering concepts using PySpark, PostgreSQL, and SQL.
