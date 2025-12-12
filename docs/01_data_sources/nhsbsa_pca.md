# NHSBSA – Prescription Cost Analysis (PCA) Monthly

**Access:** NHSBSA Open Data Portal (CKAN).  
**Purpose:** Items, cost (NIC), and quantity by BNF, geography, prescriber.

## Endpoints
- Portal dataset page and resource URLs (add links you use).
- CKAN Action API pattern (with parameters & pagination).

## Columns & Dictionary
- Month, BNF code, BNF name, Items, Quantity, NIC, Practice/Region/ICS keys.
- Notes on **London ICS** filtering and mappings.

## Load Pattern
1. HTTP pipeline to land raw JSON/CSV in **bronze**.
2. Notebook to parse & type-cast into **silver**.
3. Create marts in **gold** for the Warehouse.

## Data Quality
