Create Database Manufacturing;

-- 1. Select database
USE manufacturing;

-- 2. Rename table (remove space)
ALTER TABLE `manufacturing sql`
RENAME TO manufacturing_sql;

-- 3. Rename columns (remove spaces)
ALTER TABLE manufacturing_sql
CHANGE `Produced Qty` produced_qty INT,
CHANGE `Rejected Qty` rejected_qty INT,
CHANGE `Processed Qty` processed_qty INT,
CHANGE `Department Name` department_name VARCHAR(100),
CHANGE `Cust Name` cust_name VARCHAR(100),
CHANGE `Machine Code` machine_code VARCHAR(50),
CHANGE `Emp Name` emp_name VARCHAR(100),
CHANGE `Operation Name` operation_name VARCHAR(100),
CHANGE `Month Year` month_year VARCHAR(20),
CHANGE `Delivery Period` delivery_period VARCHAR(50),
CHANGE `Per Day Machine Cost` machine_cost INT,
CHANGE `Total Value` total_value INT;

-- 4. Check data
SELECT * FROM manufacturing_sql LIMIT 5;

-- 5. Total rows
SELECT COUNT(*) AS total_rows FROM manufacturing_sql;


-- ANALYSIS QUERIES


-- Total Production & Rejection
SELECT 
    SUM(produced_qty) AS total_production,
    SUM(rejected_qty) AS total_rejection
FROM manufacturing_sql;

-- Rejection Rate
SELECT 
    (SUM(rejected_qty)*100.0 / SUM(produced_qty)) AS rejection_rate
FROM manufacturing_sql;

-- Department-wise Production
SELECT department_name, 
       SUM(produced_qty) AS total_production
FROM manufacturing_sql
GROUP BY department_name;

-- Top 5 Customers
SELECT cust_name, 
       SUM(produced_qty) AS total
FROM manufacturing_sql
GROUP BY cust_name
ORDER BY total DESC
LIMIT 5;

-- Machine Efficiency
SELECT machine_code,
       (SUM(produced_qty)*100.0 / SUM(processed_qty)) AS efficiency
FROM manufacturing_sql
GROUP BY machine_code;

-- Monthly Production
SELECT month_year, 
       SUM(produced_qty) AS total
FROM manufacturing_sql
GROUP BY month_year;

-- Profit Analysis
SELECT 
    SUM(total_value) AS revenue,
    SUM(machine_cost * produced_qty) AS cost,
    SUM(total_value) - SUM(machine_cost * produced_qty) AS profit
FROM manufacturing_sql;

--  Top Performing Machine (Highest Efficiency)
SELECT machine_code,
       (SUM(produced_qty)*100.0 / SUM(processed_qty)) AS efficiency
FROM manufacturing_sql
GROUP BY machine_code
ORDER BY efficiency DESC
LIMIT 1;

--  Month-wise Production with Previous Month (Growth Analysis)
SELECT 
    month_year,
    SUM(produced_qty) AS production,
    LAG(SUM(produced_qty)) OVER (ORDER BY month_year) AS previous_month_production
FROM manufacturing_sql
GROUP BY month_year;