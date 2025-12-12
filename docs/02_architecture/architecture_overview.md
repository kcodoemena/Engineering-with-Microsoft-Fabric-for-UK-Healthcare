# Architecture Overview

## Fabric Items
- **Lakehouse (Delta):** bronze/silver/gold zones
- **Warehouse:** dimensional serving
- **Pipelines (Data Factory):** CKAN + DataPoint HTTP
- **Notebooks (Spark):** transformations, quality, enrichment
- **Eventstream + KQL DB:** near real-time operational analytics
- **Power BI:** semantic model & dashboards

## Data Flow
1. Ingest (batch) → bronze
2. Clean/conform → silver
3. Curate marts → gold → Warehouse
4. Real-time events → Eventstream → KQL DB (hot) & Lakehouse (cold)
5. Power BI → semantic model over Warehouse/KQL
