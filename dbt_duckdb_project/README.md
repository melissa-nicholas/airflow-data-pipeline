# dbt_duckdb_project

This is a simple `dbt` project using the [DuckDB](https://duckdb.org/) adapter. It’s part of a local data engineering pipeline that integrates with Apache Airflow.

## 🗂 Project Structure

```
dbt_duckdb_project/
├── models/
│   ├── full_names.sql
│   └── schema.yml
├── seeds/
│   └── people.csv
├── dbt_project.yml
├── profiles.yml
└── README.md
```

## 🚀 How to Run

1. Navigate to the dbt project root:

```bash
cd dbt_duckdb_project
```

2. Run the dbt seed step:

```bash
dbt seed --profiles-dir .
```

3. Run the dbt models:

```bash
dbt run --profiles-dir .
```

4. (Optional) Run tests:

```bash
dbt test --profiles-dir .
```

## ✅ What This Does

- Seeds `people.csv` into DuckDB.
- Transforms it into a model `full_names.sql` with a new `full_name` column.
- Validates data quality with dbt tests (e.g. `not_null`, `unique`).

## 🧠 What You Learn

- How to use dbt with DuckDB.
- Seeding and modeling data locally.
- Running and testing dbt models via CLI or Airflow.

---

Built with ❤️ by Melissa Nicholas
