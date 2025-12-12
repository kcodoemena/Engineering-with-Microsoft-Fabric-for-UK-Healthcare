
# Fabric UK Healthcare – London ICS (Cardiovascular) Portfolio

**Scenario:** End-to-end analytics for **London ICS** prescribing, focused on **BNF Chapter 2 – Cardiovascular System**, enriched with **Met Office 3‑hourly forecasts**.  
**Platform:** Microsoft Fabric (trial capacity) + Power BI.  
**Author:** Kelechi Odoemena

## 🎯 Objectives
- Build a **trusted lakehouse** with bronze/silver/gold zones for NHSBSA prescribing data.
- Deliver **repeatable batch pipelines** (NHSBSA CKAN APIs, BNF codes, prescriber details).
- Add **weather context** (Met Office DataPoint, 3-hourly forecasts) for operational insight.
- Demonstrate **near real-time** patterns using **Eventstream → KQL DB → Power BI**.
- Bake-in **UK GDPR** and **ICO Data Sharing Code** practices (accuracy, minimisation, retention, DPIA).

## 🏗️ Architecture
- **Storage:** OneLake Lakehouse (Delta)
- **Compute:** Fabric Data Engineering (Spark), Data Factory (Pipelines), Real-Time Intelligence (Eventstream, KQL DB)
- **Serving:** Fabric Warehouse + Power BI (semantic model & reports)

See [`docs/02_architecture/architecture_overview.md`](docs/02_architecture/architecture_overview.md).

## 📦 Datasets
- **NHSBSA Open Data (CKAN):** PCA Monthly, BNF Code Information, Prescriber Details  
- **Met Office DataPoint:** 3‑hourly forecasts / hourly observations

Details in [`docs/01_data_sources/`](docs/01_data_sources/).

## 🔁 Build Order (Quickstart)
1. **Workspace** & **trial capacity** → `docs/04_build_guides/01_create_workspace_trial.md`
2. **Lakehouse** setup → `docs/04_build_guides/02_lakehouse_setup.md`
3. **Pipelines** for PCA/BNF/Prescribers → `docs/04_build_guides/03_pipelines_ckan_pca_bnf.md`
4. **Met Office 3‑hourly** pipeline → `docs/04_build_guides/04_pipelines_metoffice_3hourly.md`
5. **Notebooks** transforms → `docs/04_build_guides/05_notebooks_transforms.md`
6. **Eventstream + KQL** → `docs/04_build_guides/06_eventstream_kql_realtime.md`
7. **Power BI** semantic + dashboards → `docs/04_build_guides/07_powerbi_semantic_and_reports.md`

## 🛡️ Governance & Compliance
- UK GDPR principles & data sharing patterns (ICO Code) with DPIA templates in `governance/` and `docs/03_governance/`.

## 🧪 Reproducibility
- Parameterized pipelines (see `infra/env.sample.json`).
- Clear separation: `/data` is **not** committed; use dev storage locally or OneLake.

## 📣 Storytelling
Use `/media` for diagrams/screenshots/video clips to support posts and short videos.

## ⚠️ Fabric Trial Notes
Some features require capacity; the **trial** supports most workloads but excludes Copilot & Private Link. After trial expiry, reassign workspaces for non‑Power BI items.

## 📜 License
See `LICENSE`.

