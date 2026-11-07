
# Tableau HR Analytics Dashboard

## Project Overview

This project focuses on analyzing Human Resources data using Tableau to understand employee attrition, workforce demographics, compensation, job satisfaction, and employee experience.

The interactive HR Analytics Dashboard presents key workforce metrics and visual insights to support data-driven HR decision-making.

## Tools & Technologies

- Tableau
- Calculated Fields
- Interactive Filters
- Dashboard Actions
- Data Visualization

## Dashboard Overview

The project contains one main dashboard named **HR Analytics Dashboard**, supported by 10 worksheets.

### Key Performance Indicators (KPIs)

- Total Employees
- Average Monthly Income
- Average Environment Satisfaction
- Average Job Satisfaction
- Average Hourly Rate of Male Research Scientists

### Analysis & Visualizations

The dashboard includes the following analysis areas:

1. **Age-wise Attrition Rate** – Examines attrition across employee age groups.
2. **Attrition Rate vs Monthly Income** – Provides an attrition-related income analysis.
3. **Average Monthly Income** – Displays the average employee monthly income.
4. **Average Environment Satisfaction** – Measures employee satisfaction with the work environment.
5. **Average Hourly Rate** – Analyzes the hourly rate for Male Research Scientists.
6. **Department-wise Average Attrition** – Compares attrition rates across departments.
7. **Average Working Years by Department** – Compares employee experience across departments.
8. **Job Role vs Work-Life Balance** – Intended to examine work-life balance across job roles.
9. **Job Satisfaction Rate** – Displays average employee job satisfaction.
10. **Years Since Last Promotion** – Explores attrition in relation to promotion history.

## Calculated Fields

### Average Attrition Rate

```tableau
AVG(
    IF [Attrition] = "Yes" THEN 1
    ELSE 0
    END
)
```

This calculation converts employee attrition status into a numeric value and calculates the average to determine the attrition proportion.

## Interactive Features

- Department-based filtering and dashboard actions.
- Gender and Job Role filters for the hourly-rate analysis.
- Interactive dashboard worksheets.

## Project File

[Download Tableau HR Analytics Dashboard](./Tableau_HR_Analytics_Dashboard.twbx)

## Dashboard Preview

Add your dashboard screenshot to the `Screenshots` folder and display it here:

![Tableau HR Analytics Dashboard](./Screenshots/Tableau_Dashboard.png)

## Project Objective

The objective of this project is to explore workforce patterns, understand employee attrition, evaluate satisfaction levels, and analyze compensation and employee experience through interactive Tableau visualizations.

---

**Project Category:** HR Analytics  
**Visualization Tool:** Tableau  
**File Format:** TWBX (Packaged Tableau Workbook)
