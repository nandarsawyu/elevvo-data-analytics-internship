# Task 1: Sales Performance Dashboard Using Excel

## Project Overview
This project focuses on analyzing sales performance for an e-commerce retail business using Microsoft Excel. The raw Superstore sales dataset was transformed through data cleaning, structured with date intelligence formulas, aggregated using Pivot Tables, and presented via an interactive business dashboard featuring dynamic Slicers.

---

## Dataset Description
* **Dataset Name:** Superstore Sales Dataset
* **Source:** Kaggle
* **Scope:** 9,994 transaction records spanning from 2015 to 2018 across multiple categories, customer segments, and geographic regions.

---

## Project Objectives
* Clean, format, and structure raw transactional data into an official Excel Table.
* Create calculated helper columns for time-series analysis (`Order Year`, `Year-Month`, `Month Name`).
* Compute executive-level Key Performance Indicators (KPIs).
* Build multi-dimensional Pivot Tables to evaluate sales across trends, categories, and geographic regions.
* Calculate Month-over-Month (MoM) and Year-over-Year (YoY) percentage revenue growth.
* Implement interactive Slicers connected across all Pivot Tables for synchronized cross-filtering.

---

## Key Metrics & Business KPIs

| Metric | Description | Total Value |
| :--- | :--- | :--- |
| **Total Revenue** | Aggregate sales volume generated across all orders | **$2,297,200.86** |
| **Total Profit** | Aggregate gross profit | **$286,397.02** |
| **Total Orders** | Total unique purchase transactions | **5,009** |
| **Total Units Sold** | Total physical quantity of products shipped | **37,873** |
| **Total Customers** | Unique customer headcount | **793** |

---

## Excel Features & Workflow

### 1. Data Import & Transformation
* Converted raw CSV data into an Excel Table named `SuperstoreData`.
* Formatted currency (`Sales`, `Profit`), integer (`Quantity`), and date columns (`Order Date`, `Ship Date`).
* Added date intelligence formulas:
  * `Order Year`: `=YEAR([@[Order Date]])`
  * `Year-Month`: `=TEXT([@[Order Date]], "YYYY-MM")`
  * `Month Name`: `=TEXT([@[Order Date]], "mmm")`

### 2. Pivot Table Aggregations
* **KPI Summary Cards:** Created backend summaries for total revenue, profit, unit volume, and order counts
* **Monthly Performance Trend:** Grouped sales and profit by `Year-Month` to trace long-term trends.
* **Category Breakdown:** Aggregated revenue by `Category` and `Sub-Category`.
* **Regional Distribution:** Analyzed performance across Central, East, South, and West regions.

### 3. Year-over-Year (YoY) Growth Calculation
* Configured a custom calculation using Pivot Table **Value Field Settings**:
  * **Show Values As:** `% Difference From`
  * **Base Field:** `Order Year`
  * **Base Item:** `(previous)`
* **Formula Applied:**
  $$\text{YoY Growth \%} = \frac{\text{Sales}_{\text{Current Year}} - \text{Sales}_{\text{Previous Year}}}{\text{Sales}_{\text{Previous Year}}}$$


### 4. Interactive Dashboard & Slicers
* Built dynamic visual charts: **Combo Trend Chart** (Line & Column), **Clustered Bar Chart** (Category), and **Doughnut Chart** (Regional distribution).
* Added synchronized **Slicers** (`Region`, `Category`, `Segment`) connected via **Report Connections** to update all dashboard elements simultaneously.

---

## Key Business Insights
* **Annual Growth Trajectory:** Overall revenue expanded steadily over the 4-year period, with **2017** generating the highest total sales volume.
* **Peak YoY Expansion:** **2016** achieved the highest YoY revenue growth rate at approximately **29.47%**.
* **Category Drivers:** Technology and Office Supplies contributed the largest share to total profitability, whereas Furniture experienced lower profit margins due to higher shipping costs and discounting.
* **Geographic Distribution:** The **West** region led all areas in both total sales volume and net profitability.

---
