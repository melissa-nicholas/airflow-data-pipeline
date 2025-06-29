from airflow import DAG
from airflow.providers.standard.operators.bash import BashOperator
from datetime import datetime

default_args = {
    'owner': 'melissa',
    'start_date': datetime(2024, 1, 1),
    'retries': 1,
}

DBT_DIR = "/Users/melissanicholas/airflow-data-pipeline/dbt_duckdb_project"

with DAG(
    dag_id="dbt_duckdb_pipeline",
    default_args=default_args,
    description="A simple DAG to run dbt with DuckDB",
    schedule=None,
    catchup=False,
    tags=["dbt", "duckdb", "portfolio"],
) as dag:

    dbt_deps = BashOperator(
        task_id="dbt_deps",
        bash_command=f"cd {DBT_DIR} && dbt deps",
    )

    dbt_seed = BashOperator(
        task_id="dbt_seed",
        bash_command=f"cd {DBT_DIR} && dbt seed --profiles-dir .",
    )

    dbt_run = BashOperator(
        task_id="dbt_run",
        bash_command=f"cd {DBT_DIR} && dbt run --profiles-dir .",
    )

    dbt_test = BashOperator(
        task_id="dbt_test",
        bash_command=f"cd {DBT_DIR} && dbt test --profiles-dir .",
    )

    dbt_deps >> dbt_seed >> dbt_run >> dbt_test

