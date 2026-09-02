# Task 7: Time Series Breakdown of Retail Sales

## Description

Analyze Walmart retail sales data to identify **sales trends, moving averages, seasonal patterns, and sales performance across stores and departments**. A simple exponential smoothing model is also used to forecast future sales.

## Dataset

**Walmart Recruiting – Store Sales Forecasting**

* Dataset: Walmart Store Sales Forecasting
* Source: Kaggle
* Main file: `train.csv`
* Data frequency: Weekly sales
* Period: 2010–2012

[Download `train.csv`](https://raw.githubusercontent.com/SWAPI03/WALMART-SALES-FORECASTING/main/train.csv)

### Key Columns

| Column         | Description         |
| -------------- | ------------------- |
| `Store`        | Store number        |
| `Dept`         | Department number   |
| `Date`         | Sales week          |
| `Weekly_Sales` | Weekly sales amount |
| `IsHoliday`    | Holiday indicator   |

## Objectives

* Clean and prepare the retail sales data
* Convert weekly sales into monthly sales
* Analyze overall sales trends over time
* Calculate and visualize moving averages
* Identify monthly seasonal patterns
* Compare sales across stores and departments
* Analyze individual store-department performance
* Apply simple exponential smoothing for sales forecasting

## Tools & Libraries

* Python
* Pandas
* NumPy
* Matplotlib
* Statsmodels
* Jupyter Notebook / Google Colab

## Covered Topics

* Time Series Analysis
* Data Cleaning
* Trend Analysis
* Moving Averages
* Seasonality
* Data Visualization
* Sales Performance Analysis
* Exponential Smoothing
* Basic Forecasting

## Analysis & Visualizations

The project includes:

1. Weekly Retail Sales Trend
2. Monthly Retail Sales Trend
3. 6-Month Moving Averages
4. Average Sales by Month
5. Total Sales by Year
6. Top 10 Departments by Sales
7. Total Sales by Store
8. Store and Department Sales Trends
9. Historical Sales vs Forecast

## Bonus

A simple **Exponential Smoothing** model is used to forecast the next six months of retail sales.

## Key Outcomes

The analysis demonstrates how time-series techniques can be used to:

* Understand historical retail sales performance
* Identify long-term trends
* Detect recurring seasonal patterns
* Smooth short-term fluctuations
* Compare sales performance across business units
* Generate basic future sales forecasts

## Project Structure

```text
Task_7_Time_Series_Retail_Sales/
│
├── Walmart_Time_Series_Analysis.ipynb
├── train.csv
├── walmart_sales_cleaned.csv
└── README.md
```

## Conclusion

This project provides a practical time-series analysis of Walmart retail sales, combining data preparation, trend and seasonality analysis, visualization, moving averages, and basic forecasting to understand retail sales behaviour over time.
