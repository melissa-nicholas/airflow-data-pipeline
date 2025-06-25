# Airflow Data Pipeline – Hello World DAG

This project is a beginner-friendly introduction to Apache Airflow. It includes a basic DAG that prints a message to the logs 
once per day.

## What's Included

- hello_world_dag.py: A simple DAG using a PythonOperator to print "Hello, world from Airflow!".
- Project structure following Airflow best practices
- GitHub repo for tracking and sharing work

## How to Run Locally

1. Clone this repo:
   git clone https://github.com/melissa-nicholas/airflow-data-pipeline.git
   cd airflow-data-pipeline

2. Create and activate a virtual environment:
   python3 -m venv airflow-venv
   source airflow-venv/bin/activate

3. Install Airflow:
   pip install apache-airflow

4. Run Airflow:
   airflow standalone

5. Access the Airflow UI:
   Visit http://localhost:8080 in your browser

## DAG Location

All DAGs live inside the dags/ directory. You can extend this project by:

- Adding a data ingestion task
- Triggering a dbt Cloud job
- Sending Slack alerts

## Next Steps

This is the foundation — next up will be:
- Loading sample data into Snowflake
- Adding a dbt transformation layer
- Building a complete, real-world DAG pipeline

