# dbt_duckdb_project

This is the dbt Core project used in the Airflow + DuckDB pipeline.

## Structure
- `models/`: Contains SQL models like `full_names.sql`
- `seeds/`: Seed data like `people.csv`
- `dbt_project.yml`: Project configuration

## Run dbt locally
```bash
dbt seed
dbt run
dbt test

# Profile Location

This project uses a local `profiles.yml` in the same directory, passed with:
dbt run --profiles-dir .

For more info, see the main project README in the root folder.