# Task 1: Sales Performance Dashboard Using Excel

## Project Overview
This project focuses on analyzing sales performance using Microsoft Excel. Raw Superstore sales data was cleaned, organized, and analyzed using PivotTables, culminating in an interactive business performance dashboard[cite: 1].

---

## Dataset
* **Dataset Name:** Superstore Sales Dataset
* **Source:** Kaggle
* **Description:** Contains transactional data including order details, customer demographics, product categories, geographic regions, order dates, and sales revenue[cite: 1].

---

## Objectives
* Clean and structure raw transactional sales data.
* Create calculated columns for date intelligence (Year, Year-Month, Month Name).
* Calculate core business KPIs (Total Revenue, Orders, Average Order Value).
* Utilize PivotTables and PivotCharts to examine multidimensional performance.
* Analyze monthly trends and evaluate Year-over-Year (YoY) revenue growth.
* Build a dynamic, dynamic-filtered dashboard using interactive Slicers.

---

## Key KPIs
* **Total Revenue:** Overall gross revenue generated.
* **Total Orders:** Count of unique sales transactions.
* **Average Order Value (AOV):** Mean revenue generated per transaction.
* **Total Customers:** Unique customer count.
* **Total Products:** Product variety sold.

---

## Analysis & Visualizations

### 1. Annual & YoY Growth Analysis
* **Formula:**  
  $$\text{YoY Growth} = \frac{\text{Current Year Sales} - \text{Previous Year Sales}}{\text{Previous Year Sales}}$$
* Evaluated annual revenue progression and percentage changes year-over-year.

### 2. Time Series & Segment Breakdown
* **Monthly Sales:** Evaluates seasonal patterns and sales trajectory across months.
* **Sales by Category:** Identifies primary product categories driving total revenue.
* **Sales by Region:** Displays geographic distribution across key operating regions.
* **Top 10 Products:** Highlights the highest revenue-generating individual products.
* **Sales by Segment:** Tracks revenue contributions across Customer, Corporate, and Home Office segments.

---

## Interactive Dashboard Features
Dynamic Slicers were integrated across all Pivot Tables and Pivot Charts to enable synchronized filtering by:
* **Region**
* **Category**
* **Segment**

---

## Key Insights
* Sales expanded steadily, showing significant upward movement between 2015 and 2017.
* **2017** recorded the highest annual sales overall.
* **2016** experienced the strongest relative expansion, achieving a peak YoY sales growth of **~29.47%**.
* Revenue distribution exhibits high concentration, with a top subset of products accounting for a substantial portion of overall sales.

---

## Tools & Technical Skills
* **Tools:** Microsoft Excel (Tables, PivotTables, PivotCharts, Slicers, Conditional Formatting)
* **Skills:** Data Transformation, KPI Development, Date Calculation Formulas, YoY Time-Series Analysis, Dashboard UX/UI Design

---

## Repository Structure
```text
Task_1_Sales_Performance_Dashboard/
├── README.md
├── Superstore_Sales_Dashboard.xlsx
└── screenshots/
    └── sales_dashboard.png
