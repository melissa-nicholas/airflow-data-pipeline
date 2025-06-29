# 🌟 dbt + Airflow + DuckDB: Mini Star Schema Analytics Project

This is a lightweight, end-to-end data pipeline built with [dbt Core](https://www.getdbt.com/), [Apache Airflow](https://airflow.apache.org/), and [DuckDB](https://duckdb.org/). It demonstrates how to orchestrate and model data in a local analytics engineering environment — no cloud required.

## 🔧 Tech Stack

- **Airflow**: DAG orchestration (daily run)
- **dbt Core**: SQL-based transformations and testing
- **DuckDB**: In-process SQL analytics engine (local file storage)
- **Mockaroo**: Seed data (customers, products, orders)

## 🧱 Data Model

The pipeline builds a star schema with:

### 📦 Fact Table
- `fct_orders`: Order-level data, joined with products and calculated total sales

### 🧑‍🤝‍🧑 Dimension Tables
- `dim_customers`: Full name, email, signup region/year
- `dim_products`: Product metadata with category and price

### 🔄 Staging Models
- Raw seed cleanup and typing

## 📈 Example Metrics (could be extended)
- Total sales by category
- Customers by region
- Repeat customer rate
- Lifetime value (LTV)

## ✅ dbt Features Used

- `seeds`, `ref`, `sources`
- `tests`: unique + not null
- `Jinja` + `strptime()` for DuckDB compatibility
- `schema.yml` documentation
- Materializations: `view`, `table`

## 📂 Project Structure

```
.
├── dags/
│   ├──dbt_duckdb_dag.py           
├── dbt_duckdb_project/
│   ├── models/
│   │   ├── staging/
│   │   │   ├── stg_customers.sql
│   │   │   ├── stg_products.sql
│   │   │   └── stg_orders.sql
│   │   ├── marts/
│   │   │   ├── dim_customers.sql
│   │   │   ├── dim_products.sql
│   │   │   └── fct_orders.sql
│   ├── seeds/
│   │   ├── customers.csv
│   │   ├── products.csv
│   │   └── orders.csv
```

### 🛠 Airflow DAG

This project includes an [Apache Airflow](https://airflow.apache.org/) DAG that orchestrates the full dbt workflow locally. The DAG includes the following steps:

1. **Install dependencies** with `dbt deps`
2. **Seed data** from local CSVs with `dbt seed`
3. **Build models** using `dbt run`
4. **Run tests** to validate models with `dbt test`

The DAG is manually triggerable (no schedule by default) and is designed to run against a local DuckDB target. It showcases orchestration skills and simulates a production-style data pipeline using open-source tools only.

DAG file path:
```
airflow/dags/dbt_duckdb_pipeline.py
```

---

## 🚀 How to Run

1. Clone the repo
2. Install dependencies (`pip install dbt-duckdb`)
3. Run:
   ```
   dbt seed
   dbt build
   dbt docs serve
   ```

Optional: Airflow DAGs can be used to run this on a schedule.

---

## 🙋‍♀️ About Me

I'm a full-stack data professional with experience in cloud data warehousing, ELT pipelines, and BI tooling. This project showcases my skills across modeling, orchestration, testing, and warehouse design — all using open-source, local-first tools.

👉 [Connect on LinkedIn](https://www.linkedin.com/in/melissa-nicholas-7a143593/)


Built with ❤️ by Melissa Nicholas
