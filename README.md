# Airflow + dbt + DuckDB Data Pipeline

This is a minimal end-to-end data engineering project using Apache Airflow, dbt Core, and DuckDB — built locally to demonstrate 
orchestration, transformation, and data modeling.

## 🛠 Tech Stack

- **Apache Airflow**: DAG orchestration and scheduling  
- **dbt Core**: SQL-based transformations  
- **DuckDB**: In-process database for fast local analytics  
- **Python 3.9** in a virtual environment (`airflow-venv`)  
- **Git/GitHub** for version control  

## 📁 Project Structure

```
airflow-data-pipeline/
├── airflow/                   # Airflow home directory
│   └── dags/
│       └── dbt_duckdb_dag.py
├── dbt_duckdb_project/        # dbt Core project
│   ├── models/
│   │   └── full_names.sql
│   ├── seeds/
│   │   └── people.csv
│   ├── dbt_project.yml
│   └── profiles.yml
├── requirements.txt           # Python dependencies
└── README.md
```

## ✅ What It Does

### Airflow DAG

- Runs a full DAG that:
  - Installs dbt dependencies
  - Seeds raw data into DuckDB
  - Runs models to build transformed data
  - Executes dbt tests

### dbt Models

- Seeds `people.csv` into DuckDB as a table  
- Builds a model `full_names.sql` that adds a `full_name` column  

## 🚀 How to Run

```bash
# Clone the repo
git clone https://github.com/melissa-nicholas/airflow-data-pipeline.git
cd airflow-data-pipeline

# Create and activate a virtual environment
python3 -m venv airflow-venv
source airflow-venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Set Airflow DAGs folder
export AIRFLOW__CORE__DAGS_FOLDER=$(pwd)/airflow/dags

# Initialize Airflow
airflow db init

# Start Airflow services
airflow webserver       # In one terminal
airflow scheduler       # In another terminal

# Trigger the DAG
airflow dags trigger dbt_duckdb_pipeline
```

## 🧠 What You Learn

- Orchestrating dbt with Airflow  
- Building and testing dbt models  
- Using DuckDB for local analytics  
- Version-controlling data projects  

## 📬 Contact

Built by **Melissa Nicholas**  
GitHub: [melissa-nicholas](https://github.com/melissa-nicholas)

> Want to build this yourself? Start with `hello_world_dag.py` and add models one step at a time!

