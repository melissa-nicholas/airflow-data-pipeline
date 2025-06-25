# Airflow + dbt + DuckDB Data Pipeline

This is a minimal end-to-end data engineering project using Apache Airflow, dbt Core, and DuckDB — built locally to demonstrate 
orchestration, transformation, and data modeling.

## 🛠 Tech Stack

- Apache Airflow: DAG orchestration and scheduling
- dbt Core: SQL-based transformations
- DuckDB: In-process database for fast local analytics
- Python 3.9 in a virtual environment (airflow-venv)
- Git/GitHub for version control

## 📁 Project Structure

airflow-data-pipeline/
├── airflow/                # Airflow home directory
│   └── dags/
│       └── hello_world_dag.py
├── dbt_duckdb_project/     # dbt Core project
│   ├── models/
│   │   └── full_names.sql
│   ├── seeds/
│   │   └── people.csv
│   └── dbt_project.yml
├── requirements.txt        # Python dependencies
└── README.md

## ✅ What It Does

Airflow DAG:
- Runs a simple PythonOperator that prints "Hello, world from Airflow!"

dbt Models:
- Seeds people.csv into DuckDB as a table
- Builds a model full_names.sql that adds a full_name column

## 🚀 How to Run

1. Clone this repo:
   git clone https://github.com/melissa-nicholas/airflow-data-pipeline.git
   cd airflow-data-pipeline

2. Create and activate a virtual environment:
   python3 -m venv airflow-venv
   source airflow-venv/bin/activate

3. Install dependencies:
   pip install -r requirements.txt

4. Set up Airflow and start the UI:
   export AIRFLOW_HOME=~/airflow
   airflow db init
   airflow webserver
   # In another terminal
   airflow scheduler

5. Run dbt:
   cd dbt_duckdb_project
   dbt seed
   dbt run

## 🧠 What You Learn

- Orchestrating with Airflow
- Building and testing dbt models
- Managing local analytics with DuckDB
- Version-controlling data projects with Git

## 📬 Contact

Built by Melissa Nicholas  
GitHub: https://github.com/melissa-nicholas

---

Want to build this yourself? Start with hello_world_dag.py and add models one step at a time!

