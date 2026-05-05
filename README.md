# manufacturing-performance-analysis
End-to-end analysis of manufacturing data using Excel, SQL, Tableau, and Power BI to evaluate production efficiency, cost optimization, and operational performance.

>> Project Overview
This project analyzes a real-world manufacturing dataset across four industry-standard tools — each used independently to demonstrate proficiency in data analysis, visualization, and business intelligence. The goal was to extract actionable insights on production output, rejection patterns, machine efficiency, and delivery performance.

>> Tools Used
ToolPurposeMySQLData cleaning, transformation and analytical queriesMicrosoft ExcelInteractive dashboard with slicers and KPI cardsTableauVisual storytelling with filters and trend analysisPower BIBusiness intelligence dashboard with machine-level insights
Note: Each tool was used independently — this is not a mixed-tool pipeline. Each module is a standalone analysis of the same dataset.

>> Key Metrics
MetricValueProduced Quantity60,050,621Processed Quantity60,022,534Manufactured Quantity1,247,206,459Rejected Quantity491,023Avg. Per Day Machine Cost1,497.99Avg. Manufactured Qty/Day4,979.06No. of Machines87

>> Key Insights
-- Production and Rejection

Total production crossed 60 million units with a rejection rate of approximately 0.82%, indicating a well-controlled manufacturing process.
Cut and Fold had the highest rejection count (117,770), followed by Printing (86,065) and Cross Checking (80,108) — these operations are the top targets for quality improvement.
Outsourcing and Laser Cutting2 had the lowest rejections (719 and 145 respectively), suggesting better process control or lower volumes.

-- Machine Performance

MC027 was the highest-performing machine with 9,639K manufactured units, followed by MC026 at 8,514K.
High-costing machines include MC027 and MC026 — which are also the most productive, justifying their investment.
Low-costing machines (MC101, MC086, MC024) are clustered around 3,400-3,500 cost units, suitable for low-complexity operations.
Low performing machines: MC101, MC024, MC086 — flagged at around 13K output, indicating potential for maintenance or reallocation.

-- Delivery Performance

Delivery was nearly equally split across all three categories: Early 33.85%, On Time 32.94%, Late 33.21%.
The near-equal three-way split highlights a delivery inconsistency problem — over 33% of orders are late, which is a significant operational risk.

-- Buyer-wise Production

Uniqlo received the highest produced quantity (15,540,768 units), followed by Zara (15,047,624) and H&M (14,914,486).
Nike was the lowest among the four buyers (14,547,743 units).

-- Monthly Production Trend

Production peaked in March (5,399,228) and November (5,198,429).
The lowest months were February (4,597,390) and October (4,717,903), possibly due to seasonal demand fluctuations.
The overall trend shows a wave pattern — production rises mid-year, dips, then recovers toward year-end.

-- Department-wise Insights

Departments analyzed: Footwear, Knitwear, Printed Fabric, Woven Labels.
Each department shows distinct rejection patterns based on the operations involved.


>> SQL - Data Cleaning and Analysis
File: Manufacturing_Analysis.sql
Steps Performed:

Created Manufacturing database
Renamed table from manufacturing sql to manufacturing_sql
Renamed all columns to remove spaces for SQL compatibility
Validated data with row count and sample SELECT

Analytical Queries Covered:

Total Production and Rejection
Rejection Rate (%)
Department-wise Production
Top 5 Customers by Volume
Machine Efficiency (Produced / Processed x 100)
Monthly Production Trend
Profit Analysis (Revenue minus Machine Cost)
Top Performing Machine by Efficiency
Month-over-Month Production Growth using LAG()


>> Excel Dashboard
File: Manufacturing_Analysis.xlsx
Features:

KPI Cards: Processed Qty, Produced Qty, Rejected Qty, Manufactured Qty
Donut Chart: Delivery Performance (Early / On Time / Late)
Bar Chart: Buyer-wise Production (H&M, Nike, Uniqlo, Zara)
Bar Chart: Rejection Analysis by Operation Name
Bar Chart: Manufactured Trend (Jan-Dec)
Line Chart: Production Trend across months
Slicers: Buyer, Department Name, Operation Name, Month Year


>> Tableau Dashboard
File: Manufacturing_Analysis.twbx
Features:

KPI Headers: Produced Qty, Processed Qty, Manufactured Qty, Rejected Qty
Rejection Analysis: Horizontal bar chart by Operation Name
High Costing Machines: Top 5 machines by cost
Low Costing Machines: Bottom 5 machines by cost
Machine Performance: All machines ranked by output
Delivery Performance: Pie chart with Early, On Time, Late split
Filters: Operation Name, Delivery Period, Buyer, Department Name


>> Power BI Dashboard
File: Manufacturing_Analysis.pbix
Features:

KPI Cards: All 6 key metrics including No. of Machines (87)
Rejection Analysis: Horizontal bar chart by Operation
High Costing Machines: MC107, MC002, MC101, MC086, MC024
Low Costing Machines: MC051, MC127, MC001, MC096, MC102
Low Performing Machines: MC101, MC024, MC086, MC102, MC081
High Performing Machines: MC027, MC026, MC094, MC058, MC062
Filters: Buyer (H&M, Nike, Uniqlo, Zara), Operation Name


>> Business Recommendations

Reduce Cut and Fold rejections — Highest rejection operation. Recommend process audit and operator training.
Address Late Deliveries — 33.21% late rate is high. Investigate scheduling and supplier lead times.
Optimize low-performing machines — MC101, MC024, MC086 show low output relative to cost. Consider reallocation or maintenance scheduling.
Focus on Uniqlo and Zara — Top two buyers by volume. Prioritize capacity planning for these clients.
Leverage high-efficiency months — March and November show peak production. Plan preventive maintenance around low months like February and October.


>> About
This project was built as a data analytics portfolio project to demonstrate skills in SQL, Excel, Tableau, and Power BI. Each tool was used independently to perform a complete analysis of the same manufacturing dataset.
