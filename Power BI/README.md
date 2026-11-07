# HR Analytics – Power BI

## Project Overview

This project uses Microsoft Power BI to analyze employee data and identify workforce patterns, employee attrition trends, compensation levels, job satisfaction, and work-life balance.

The project uses HR employee data containing 50,000 employee records across two datasets. Power BI is used to prepare and model the data, calculate key performance indicators, and create interactive dashboards that provide meaningful insights into employee behavior and workforce performance.

## Data Model Structure

The Power BI project uses the following HR data sources:

| Data Source | Description |
|---|---|
| `HR_data_01` | Employee demographics, attrition, department, education, job role, satisfaction, and hourly rate. |
| `HR_data_02` | Employee income, overtime, performance, working years, work-life balance, and promotion history. |

The employee identifier is used to connect employee information across the two datasets.

## Data Preparation

- Imported HR employee datasets into Power BI.
- Prepared and organized employee data for analysis.
- Connected employee information using employee identifiers.
- Created appropriate data relationships.
- Reviewed column data types and data quality.
- Prepared categorical fields for workforce segmentation.
- Developed calculated fields and measures for HR reporting.

## Key Performance Indicators

The Power BI dashboard focuses on the following HR metrics:

- Total Employees
- Total Attrition
- Active Employees
- Attrition Rate
- Average Monthly Income
- Average Hourly Rate
- Average Working Years
- Average Work-Life Balance

## Analysis Performed

### 1. Attrition Analysis

- Employee attrition distribution by gender.
- Attrition rate by department.
- Attrition rate by age group.
- Attrition rate by job role.
- Identification of employee attrition patterns.

### 2. Compensation Analysis

- Average monthly income analysis.
- Attrition rate across different income bands.
- Average hourly rate analysis.
- Compensation-based employee segmentation.

### 3. Employee Experience Analysis

- Work-life balance across job roles.
- Average working years by department.
- Employee satisfaction analysis.
- Workforce distribution across different employee categories.

### 4. Promotion Analysis

- Attrition rate by years since last promotion.
- Employee promotion-history analysis.
- Comparison of promotion groups and attrition patterns.

## Tools and Power BI Features

- Microsoft Power BI Desktop
- Power Query
- Data Cleaning and Transformation
- Data Modeling
- DAX Measures
- Calculated Columns
- KPI Cards
- Interactive Charts and Visualizations
- Slicers and Filters
- Dashboard Design

## Key Business Questions

- Which departments experience higher employee attrition?
- How does attrition vary across different age groups and job roles?
- Is employee attrition associated with monthly income levels?
- How does work-life balance vary across job roles?
- Does the time since the last promotion relate to employee attrition?
- Which HR metrics provide insights into workforce performance?

## How to Use

1. Download the Power BI project file.
2. Open the `.pbix` file using Microsoft Power BI Desktop.
3. Review the data model and relationships.
4. Explore the KPI cards and visualizations.
5. Interact with available slicers and filters to analyze employee trends.
6. Review the dashboard to understand workforce distribution and attrition patterns.

## Dashboard Preview

![HR Analytics Power BI Dashboard](images/PowerBI_Dashboard.png)

## Project File

[Download Power BI HR Analytics Workbook](./PowerBI_HR_Analytics_Project.pbix) – Power BI report containing the HR data model, measures, and dashboard visualizations.

## Conclusion

This Power BI project demonstrates how employee data can be transformed into interactive business intelligence reports. Through data modeling, DAX calculations, and visual analytics, the dashboard helps identify employee attrition patterns, evaluate workforce distribution, and understand important HR performance indicators.
