# Advanced Data Analytics Project: Sales & Customer Performance

## Project Overview
This project demonstrates the transition from raw transactional data to high-level business intelligence. I developed a series of advanced SQL scripts to perform complex data transformations, behavioral segmentation, and time-series analysis. The final output is a structured "Gold-layer" reporting environment designed to drive strategic decisions regarding product performance and customer lifecycle management.

## Key Business Questions
* **Sales Trends:** How are sales trending month-over-month and year-over-year?
* **Product Performance:** Which categories contribute most to total revenue and how do products compare to their averages?
* **Customer Segmentation:** How is our customer base segmented (VIP vs. New) based on tenure and spending history?
 
## Technical SQL Skills Demonstrated
* **Advanced Aggregations:** Used `SUM`, `COUNT DISTINCT`, and `GROUP BY` for complex data summarization.
* **Window Functions:** Utilized `LAG` for growth analysis and `OVER(PARTITION BY...)` for rankings and performance averages.
* **Data Transformation:** Applied `CAST`, `CONCAT`, and handled edge cases like division-by-zero using `NULLIF`.
* **CTEs & Views:** Built modular code using Common Table Expressions to create a clean, final reporting layer.

## Project Structure
| File | Description |
| :--- | :--- |
| `Changes Over Time.sql` | Analysis of sales and customer acquisition over time. |
| `Cumulative Analysis.sql` | Running totals and performance stability analysis. |
| `Performance Analysis.sql` | Comparison of sales against prior periods and averages. |
| `Data Segmentation.sql` | Logic for grouping products by cost and customers by loyalty. |
| `Part-To-Whole Analysis.sql` | Analyzes category percentage contribution to overall total sales. |
| `Customer Report.sql` | A comprehensive view for customer-centric metrics. |
| `Product Report.sql` | A comprehensive view for product-level performance monitoring. |

## Key Insights
* **Customer Value:** Identified a "VIP" segment of customers who drive a significant portion of revenue.
* **Growth Metrics:** Isolated specific periods of growth and decline using month-over-month comparisons.
* **Inventory Mix:** Segmented products into cost brackets to understand the price distribution of the inventory.
---
**Tooling Used:** SQL Server (T-SQL), SQL Server Management Studio (SSMS), GitHub.
