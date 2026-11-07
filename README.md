# HR Analytics – End-to-End Data Analysis & Dashboard Project

## Project Overview

The **HR Analytics Project** is an end-to-end data analysis project developed using **Microsoft Excel, MySQL, Power BI, and Tableau** to analyze employee information, understand workforce patterns, and identify the factors associated with employee attrition.

The project uses an HR dataset containing approximately **50,000 employee records**. It covers employee demographics, department information, job roles, compensation, job satisfaction, work-life balance, performance, and promotion history.

The project follows a structured analytical approach, starting with data preparation and exploration in Excel, performing database-level analysis using SQL, and developing interactive dashboards using Power BI and Tableau.

The primary objective is to transform raw employee data into meaningful business insights that support better HR decision-making, employee retention strategies, and workforce planning.

---

## Project Objectives

- Analyze employee demographics and workforce distribution.
- Identify employee attrition patterns and trends.
- Understand attrition across departments, job roles, and age groups.
- Analyze compensation levels and their relationship with employee attrition.
- Evaluate employee satisfaction and work-life balance.
- Examine working experience and promotion history.
- Calculate important HR Key Performance Indicators (KPIs).
- Build interactive dashboards for effective HR reporting.
- Generate actionable insights to support workforce planning and employee retention.

---

## Project Modules

This project is divided into four analytical modules:

| Module | Tool | Primary Purpose |
|---|---|---|
| 01 | Microsoft Excel | Data preparation, categorization, PivotTable analysis, and KPI reporting |
| 02 | MySQL | SQL-based data analysis, joins, aggregations, conditional analysis, and KPI calculations |
| 03 | Power BI | Interactive business intelligence dashboard and HR performance reporting |
| 04 | Tableau | Interactive data visualization and workforce attrition analysis |

---

# 1. Excel – HR Data Analysis

## Overview

Microsoft Excel was used to organize, prepare, categorize, and analyze employee data. PivotTables and KPI summaries were used to explore employee attrition, compensation, employee experience, and promotion history.

## Workbook Structure

The workbook `Excel_HR_Analytics_Final.xlsx` contains five worksheets:

| Worksheet | Description |
|---|---|
| `HR_data_01` | Employee demographics, attrition, department, education, job role, satisfaction, and hourly rate |
| `HR_data_02` | Employee income, overtime, performance, working years, work-life balance, and promotion history |
| `Pivot` | Pivot-based KPI summaries and grouped analysis |
| `Charts` | Worksheet reserved for chart-based reporting |
| `Dashboard` | Dashboard worksheet |

## Data Preparation

- Worked with two employee datasets containing 50,000 records each, as documented in the workbook preparation notes.
- Used employee identifiers to connect employee information across the two datasets.
- Created an **Age Group** category for age-based analysis.
- Created **Income Band** and **SortIncomeBand** fields for compensation segmentation.
- Created **Promotion Group** and **Sort Promotion Group** fields for promotion-history analysis.
- Organized data for PivotTable-based reporting.

## Key Performance Indicators

- Total Employees
- Total Attrition
- Attrition Rate
- Average Monthly Income
- Average Hourly Rate
- Average Working Years
- Average Work-Life Balance

## Analysis Performed

### Attrition Analysis
- Attrition distribution by gender.
- Attrition rate by department.
- Attrition rate by age group.
- Attrition rate by job role.

### Compensation Analysis
- Average monthly income.
- Attrition rate across income bands.
- Average hourly rate of male Research Scientists.

### Employee Experience Analysis
- Average work-life balance by job role.
- Average working years by department.
- Employee satisfaction summaries.

### Promotion Analysis
- Attrition rate by years since last promotion.
- Promotion-history grouping to support comparisons.

## Tools and Features

- Microsoft Excel
- PivotTables
- Pivot-based KPI calculations
- Data categorization
- Sorting and grouping
- Charts and dashboard reporting

---

# 2. SQL – HR Data Analysis

## Overview

MySQL was used to perform structured analysis of employee records and extract meaningful insights through SQL queries.

The SQL module focuses on combining employee information, creating a consolidated HR data view, calculating key performance indicators, and analyzing employee attrition across different workforce categories.

## Data Preparation and Query Development

- Connected employee datasets using employee identifiers.
- Used SQL joins to combine employee information.
- Created a consolidated view named `HRDATA`.
- Used aggregate functions to summarize employee information.
- Applied conditional logic to categorize and compare employee records.
- Developed KPI calculations for HR reporting.

## SQL Techniques Used

- Database and table operations
- SELECT statements
- WHERE conditions
- INNER JOIN and other applicable joins
- GROUP BY
- ORDER BY
- Aggregate functions
- CASE statements
- Subqueries
- Views
- Conditional analysis
- KPI calculations

## Analysis Performed

### Attrition Analysis
- Employee attrition by department.
- Attrition across different job roles.
- Attrition by age group.
- Workforce attrition comparisons.

### Compensation Analysis
- Average monthly income.
- Income-based employee segmentation.
- Compensation-related attrition analysis.

### Employee Experience Analysis
- Work-life balance analysis.
- Working years analysis.
- Employee satisfaction analysis.

### Promotion Analysis
- Employee promotion-history analysis.
- Attrition comparisons based on years since last promotion.

## Key HR Metrics

- Total Employees
- Total Attrition
- Active Employees
- Attrition Rate
- Average Monthly Income
- Average Age
- Average Working Years

## Tools and Features

- MySQL
- SQL Joins
- Aggregate Functions
- Conditional Statements
- Subqueries
- Views
- Grouping and Filtering
- KPI Calculations

---

# 3. Power BI – HR Analytics Dashboard

## Overview

Microsoft Power BI was used to develop an interactive HR Analytics dashboard that presents workforce performance, employee attrition, compensation, and employee experience through visual reporting.

The dashboard transforms employee data into interactive insights, allowing users to explore HR metrics and understand workforce trends across different employee categories.

## Dashboard Objectives

- Monitor overall workforce distribution.
- Track employee attrition and active employees.
- Analyze attrition across departments and job roles.
- Understand employee demographics and compensation patterns.
- Evaluate work-life balance and employee experience.
- Support HR decisions through interactive visual reporting.

## Key Performance Indicators

The Power BI analysis focuses on:

- Total Employees
- Total Attrition
- Active Employees
- Attrition Rate
- Average Monthly Income
- Average Age
- Average Working Years

## Dashboard Analysis

### Attrition Analysis
- Department-wise attrition.
- Job role-wise attrition.
- Age group-wise attrition.
- Employee attrition patterns.

### Compensation Analysis
- Monthly income analysis.
- Income band comparisons.
- Compensation-related attrition patterns.

### Employee Experience Analysis
- Work-life balance analysis.
- Employee satisfaction.
- Working experience analysis.

### Promotion Analysis
- Promotion-history analysis.
- Attrition patterns based on years since last promotion.

## Power BI Features

- Power Query for data preparation and transformation.
- Data modeling and relationships.
- DAX measures and calculated columns.
- KPI cards.
- Interactive charts and visualizations.
- Slicers and filters.
- Dashboard-level reporting.

## Tools and Technologies

- Microsoft Power BI Desktop
- Power Query
- DAX
- Data Modeling
- Data Visualization
- Interactive Dashboard Development


---

# 4. Tableau – HR Analytics Dashboard

## Overview

Tableau was used to create interactive visualizations to explore employee attrition, workforce distribution, compensation, and employee experience.

The dashboard presents HR metrics in a visual format, helping users identify patterns and compare employee trends across departments, job roles, age groups, income bands, and work-life balance categories.

## Dashboard Objectives

- Visualize employee demographics and workforce distribution.
- Monitor employee attrition patterns.
- Compare attrition across departments and job roles.
- Analyze compensation and income categories.
- Understand employee work-life balance.
- Present HR performance indicators through interactive dashboards.

## Key Performance Indicators

The Tableau analysis focuses on:

- Total Employees
- Total Attrition
- Active Employees
- Attrition Rate
- Average Monthly Income
- Average Age
- Average Working Years

## Dashboard Analysis

### Attrition Analysis
- Department-wise attrition.
- Job role-wise attrition.
- Age group-wise attrition.
- Employee attrition comparisons.

### Compensation Analysis
- Average monthly income.
- Income band analysis.
- Compensation-related attrition patterns.

### Employee Experience Analysis
- Work-life balance across employee categories.
- Employee satisfaction analysis.
- Working years analysis.

### Promotion Analysis
- Attrition based on years since last promotion.
- Promotion-history comparisons.

## Tableau Features

- Interactive dashboards.
- Data visualization.
- KPI reporting.
- Charts and graphs.
- Filters and dashboard interactions.
- Visual comparison of HR metrics.

## Tools and Technologies

- Tableau
- Data Visualization
- Dashboard Development
- KPI Reporting
- Interactive Analytics

---

# 5. Key HR Metrics – Project-Wide

The project analyzes the following major HR performance indicators across its analytical modules:

| KPI | Description |
|---|---|
| Total Employees | Overall employee count |
| Total Attrition | Number of employees who left the organization |
| Active Employees | Employees currently retained in the workforce |
| Attrition Rate | Percentage of employees who left |
| Average Monthly Income | Average monthly employee compensation |
| Average Hourly Rate | Average employee hourly compensation |
| Average Age | Average employee age |
| Average Working Years | Average employee work experience |
| Average Work-Life Balance | Average work-life balance rating |

*Note: KPI definitions and calculated values should be kept consistent across tools. Actual results depend on the calculation logic and data filters used in each module.*

---

# 6. Key Business Questions

This project addresses important HR-related business questions:

1. Which departments experience higher employee attrition?
2. How does attrition vary across different age groups?
3. Which job roles have comparatively higher attrition?
4. Is employee attrition associated with monthly income levels?
5. How does work-life balance vary across job roles?
6. How does employee experience relate to attrition?
7. Does the time since the last promotion relate to employee attrition?
8. What are the major workforce distribution patterns?
9. Which HR metrics can support employee retention strategies?

---

# 7. Business Value and Insights

The project provides a structured way to understand employee behavior and workforce performance.

The analysis can help HR teams:

- Identify employee attrition patterns.
- Recognize departments and job roles that need further investigation.
- Understand compensation-related workforce trends.
- Evaluate employee satisfaction and work-life balance.
- Examine promotion history and employee experience.
- Monitor important workforce KPIs.
- Support employee retention and workforce planning decisions.

The findings are intended to support further HR investigation and data-driven decision-making rather than establish that any single factor causes employee attrition.

---

# 8. Repository Structure

```text
HR-Analytics/
│
├── README.md
│
├── Excel_HR_Analytics_Final.xlsx
│
├── SQL_HR_Analytics.sql
│
├── PowerBI_HR_Analytics_Project.pbix
│
└── Tableau_HR_Analytics_Dashboard.twbx
```

---

# 9. Tools and Technologies

| Category | Tools |
|---|---|
| Spreadsheet Analysis | Microsoft Excel |
| Database Management | MySQL |
| Business Intelligence | Microsoft Power BI |
| Data Visualization | Tableau |
| Data Preparation | Excel, Power Query, SQL |
| Data Analysis | PivotTables, SQL Queries, DAX |
| Reporting | Excel Dashboard, Power BI Dashboard, Tableau Dashboard |

---

# 10. Project Learning Outcomes

Through this end-to-end HR Analytics project, the following skills were applied:

- Data cleaning and preparation.
- Data categorization and transformation.
- SQL joins and database analysis.
- Aggregate and conditional SQL queries.
- PivotTable-based analysis.
- KPI calculations and reporting.
- Power BI data modeling and DAX.
- Interactive dashboard development.
- Tableau data visualization.
- Business analysis and insight generation.

---

# Conclusion

The **HR Analytics Project** demonstrates an end-to-end approach to employee data analysis using Microsoft Excel, MySQL, Power BI, and Tableau.

Each tool contributes to a different stage of the analytical process, from data preparation and structured querying to interactive visualization and business reporting.

By combining these technologies, the project provides a comprehensive view of employee attrition, workforce distribution, compensation, employee experience, and promotion history.

The overall goal is to convert raw HR data into meaningful insights that help organizations understand their workforce and make informed, data-driven HR decisions.

---

**Project:** HR Analytics – End-to-End Data Analysis & Dashboard Development  
**Tools:** Excel | MySQL | Power BI | Tableau  
**Dataset:** Approximately 50,000 employee records
