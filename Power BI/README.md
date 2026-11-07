# HR Analytics – Tableau

## Project Overview

This project uses Tableau to explore employee attrition, workforce demographics, compensation, employee satisfaction, and work-life balance.

The dashboard presents HR metrics and visual analysis to help identify patterns across departments, job roles, age groups, income levels, and promotion history.

## Project File

`Tableau_HR_Analytics_Dashboard.twbx`

The packaged Tableau workbook (`.twbx`) contains the workbook and its packaged data extract.

## Dashboard Structure

The workbook contains one main dashboard:

- `Dashboard`

It includes 11 worksheets used for HR analysis.

## Worksheets and Analysis

| Worksheet | Analysis |
|---|---|
| Age vs attrition rate | Employee attrition across age groups. |
| Attrition rate vs monthly income | Relationship between income levels and attrition. |
| Avg Monthly Income | Average employee monthly income. |
| Avg Satisfaction Rate | Employee satisfaction analysis. |
| Avg hourly rate male | Average hourly rate for male employees. |
| Avg working years | Average employee working experience. |
| Dept wise avg attrition | Attrition rate across departments. |
| Job role vs work life balance | Work-life balance across job roles. |
| Job satisfaction rate | Employee job satisfaction analysis. |
| Total employees | Total employee count. |
| Years since last promotion | Attrition analysis across promotion-history groups. |

## Key HR Metrics

The project focuses on the following metrics:

- Total Employees
- Attrition Rate
- Average Monthly Income
- Average Satisfaction
- Average Hourly Rate
- Average Working Years

## Calculated Field

The workbook includes an attrition-rate calculated field:

```tableau
AVG(
    IF [Attrition] = "Yes" THEN 1
    ELSE 0
    END
)
```

This converts each employee's attrition status into a numeric indicator and calculates the average. Format the result as a percentage when displaying it as an attrition rate.

## Key Business Questions

- How does employee attrition vary across age groups?
- How does attrition differ across monthly income levels?
- Which departments experience higher attrition?
- How does work-life balance vary by job role?
- What is the average employee monthly income?
- How do employee satisfaction levels compare?
- How does time since the last promotion relate to attrition?

## Tools and Tableau Features

- Tableau Desktop
- Packaged Tableau Workbook (`.twbx`)
- Calculated Fields
- Data Aggregation
- Attrition Rate Analysis
- Interactive Dashboard
- Data Visualization

## How to Open and Explore

1. Download `Tableau_HR_Analytics_Dashboard.twbx`.
2. Open the file using Tableau Desktop.
3. Open the `Dashboard` tab.
4. Explore the individual worksheets to understand each analysis.
5. Interact with available filters and dashboard controls.
6. Hover over visual elements to inspect the available details.

## Recommendations for Further Validation

- Confirm that the `Job role vs work life balance` worksheet displays the intended visualization.
- Review the income analysis to ensure it compares attrition across meaningful income groups.
- Check that the promotion analysis clearly displays promotion groups and attrition rates.
- Confirm percentage formatting for attrition-rate calculations.
- Verify dashboard filters and interactions in Tableau Desktop.

## Conclusion

This Tableau project demonstrates how HR data can be transformed into visual insights. It helps explore employee attrition, compensation, satisfaction, departmental differences, and workforce experience to support data-driven HR decisions.
