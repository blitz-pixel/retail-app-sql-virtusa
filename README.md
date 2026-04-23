# Retail App SQL (Virtusa)

This repository contains a relational SQL project for a retail/grocery-style application.  
It models core commerce entities (customers, categories, products, orders, and order items), provides seed data, and includes analytical queries for common retail business questions.

## Problem It Solves

Retail teams need a reliable data model and reusable queries to:

- track customers, catalog, and orders
- analyze sales trends and category performance
- identify high-value and inactive customers

This project provides a practical SQL foundation for those needs.

## Key Features

- Normalized schema design with primary/foreign key relationships
- Sample data insertion scripts for quick experimentation
- Prebuilt analytical queries (top-selling item, monthly revenue, customer insights, etc.)
- Example test/execution script for validating query outputs

## Tech Stack

- **SQL** (MySQL-style syntax)
- **Database objects:** tables, constraints, joins, aggregations, date functions
- **Artifacts in repo:**
  - `DataBaseCreation.sql`
  - `InsertionStatements.sql`
  - `TestCasesExecution.sql`
  - `Documentation.docx`

## Prerequisites

- MySQL 8.x (or compatible SQL engine supporting equivalent syntax)
- Access to a SQL client (MySQL CLI, MySQL Workbench, DBeaver, etc.)

## Setup and Configuration

1. Create/select a database:

   ```sql
   CREATE DATABASE retail_app;
   USE retail_app;
   ```

2. Open the SQL scripts in this order:
   1. `DataBaseCreation.sql`
   2. `InsertionStatements.sql`
   3. `TestCasesExecution.sql`

3. **Important:** many statements in the first two files are commented out with `--`.  
   Uncomment the statements you want to run (or copy them into your SQL client) before execution.

## Run Locally

From MySQL CLI:

```bash
mysql -u <username> -p
```

Then run:

```sql
USE retail_app;
SOURCE /absolute/path/to/DataBaseCreation.sql;
SOURCE /absolute/path/to/InsertionStatements.sql;
SOURCE /absolute/path/to/TestCasesExecution.sql;
```

## Tests / Validation

There is no automated unit-test framework in this repository.  
Validation is currently query-based:

- execute `TestCasesExecution.sql`
- verify result sets for business checks (e.g., inactive customers, revenue analysis)

## Database Setup, Migrations, and Seeding

- **Schema setup:** `DataBaseCreation.sql`
- **Seed data:** `InsertionStatements.sql`
- **Migration approach:** currently manual SQL edits (no migration tool configured)

## Basic Usage

After loading schema and data, run analytical queries such as:

- most sold item
- most valuable customer
- monthly revenue
- category-wise sales
- inactive customer detection

You can adapt these queries to build dashboards, reports, or backend data APIs.

## Project Structure

```text
.
├── DataBaseCreation.sql      # Schema creation and table-alter operations
├── InsertionStatements.sql   # Seed/sample data inserts
├── TestCasesExecution.sql    # Query-based validation and analytics checks
└── Documentation.docx        # Supplemental project documentation
```

## Contribution Guidelines

1. Fork the repository and create a feature branch.
2. Keep SQL changes focused and clearly formatted.
3. Update scripts/documentation when schema or query behavior changes.
4. Validate your changes by running affected SQL scripts and queries.
5. Open a pull request with a clear summary of changes and expected outcomes.

## AI Assistance Disclaimer

This README was created with assistance from AI tooling, and AI may also have been used to assist parts of development/documentation workflow.
