/*
	PROJECT NAME : P1400 HR Analytics
    DATASETS : HR_1 & HR_2
    GROUP : GROUP 01
*/

-- CREATING DATABASE
CREATE DATABASE HRAnalytics;

-- USING DATABASE
USE HRAnalytics;


-- -------------------------CREATING TABLES -----------------------

-- CREATING HR1 TABLE
CREATE TABLE HR1 (
    Age INT,
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(100),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(100),
    EmployeeCount INT,
    EmployeeNumber INT PRIMARY KEY,  -- because it contains unique custome id
    EnvironmentSatisfaction INT,
    Gender VARCHAR(20),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(100),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(50)
);

DESC HR1;


-- CREATING HR2 TABLE
CREATE TABLE HR2 (
    EmployeeID INT PRIMARY KEY, -- because it contails unique values
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(5),
    OverTime VARCHAR(10),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);

DESC HR2;


-- ---------------------------- IMPORT DATASET -------------------------

-- IMPORTING TWO DATASETS USING LOCAL_INFILE

SHOW VARIABLES LIKE 'local_infile'; -- Currently showing OFF we have to turned ON
SET GLOBAL local_infile = 1; -- Turning ON Local Infile

-- BEFORE IMPORTING WE CONVERTED .xlsx FORMAT TO .csv FORMAT USING MS EXCEL

-- IMPORTING HR_1 DATASET
LOAD DATA LOCAL INFILE 'G:/HR_data_1.csv'
INTO TABLE HR1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT COUNT(*) FROM HR1;

-- IMPORTING HR_2 DATASET
LOAD DATA LOCAL INFILE 'G:/HR_data_2.csv'
INTO TABLE HR2
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT COUNT(*) FROM HR2;


-- ------------------------------ ANALYSIS ------------------------


-- JOINING TWO TABLES USING INNER JOIN (only matching from both tables)
SELECT 
	COUNT(*) as total_rows
FROM HR1 h1
LEFT JOIN HR2 h2
ON h1.EmployeeNumber = h2.EmployeeID;


-- CREATING VIEW
CREATE VIEW hrdata AS
SELECT *
FROM HR1 h1
LEFT JOIN HR2 h2
ON h1.EmployeeNumber = h2.EmployeeID;

SELECT COUNT(*) FROM hrdata;


-- -------------------------- KPI VALUES --------------------------------

-- 01. TOTAL EMPLOYEES
SELECT
	COUNT(DISTINCT EmployeeNumber) as `Total Employees`
FROM HR1;


-- 02. TOTAL ATTRITION
SELECT
	COUNT(*) as `Total Attrition`
FROM HR1
WHERE Attrition = 'Yes';


-- 03. ATTRITION RATE
SELECT
	ROUND(
		100 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(DISTINCT EmployeeNumber),
        2) as `Attrition Rate %`
FROM HR1;


-- 04. ACTIVE EMPLOYEES
SELECT
	COUNT(*) as `Total Active Employees`
FROM HR1
WHERE Attrition = 'No';


-- 05. AVERAGE MONTHLY INCOME
SELECT
	ROUND(
		AVG(MonthlyIncome),
        2) as `Avg Monthly Income`
FROM HR2;


-- 06. AVERAGE WORK LIFE BALANCE
SELECT
	ROUND(
		AVG(WorkLifeBalance),
	2) as `Avg Work Life Balance`
FROM HR2;

SELECT
	CONCAT(ROUND(AVG(WorkLifeBalance),2), ' / 4') as `Avg Work Life Balance`
FROM HR2;


-- 07. EMPLOYEES AVERAGE WORKING YEARS
SELECT
	ROUND(
		AVG(TotalWorkingYears),
		2) as `Avg Working Years`
FROM HR2;


-- 08. EMPLOYEES AVERAGE AGE
SELECT
	ROUND(
		AVG(Age),
        1) as `Employees Avg Age`
FROM HR1;


-- 09. AVERAGE HOURLY RATE OF MALE RESEARCH SCIENTIST
SELECT
	ROUND(
		AVG(HourlyRate),
		2) as `Avg Hourly Rate of Male Research Scientist`
FROM HR1
WHERE Gender = 'Male' AND JobRole = 'Research Scientist';


-- 10. AVERAGE ATTRITION RATE BY DEPARTMENT
SELECT
	Department,
    ROUND(
		100 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(DISTINCT EmployeeNumber),
	2) as `Avg Attrition Rate`
FROM HR1
GROUP BY Department
ORDER BY `Avg Attrition Rate` DESC;


-- 11. AVERAGE WORKING YEARS BY DEPARTMENT 
SELECT
	Department,
    ROUND(
		AVG(TotalWorkingYears),
	2) as `Avg Working Years`
FROM HRdata            -- Here we are using Created view - 'HRdata'
GROUP BY Department
ORDER BY `Avg Working Years` DESC;


-- 12. AVERAGE WORK LIFE BALANCE BY JOB ROLE
SELECT
	JobRole,
    ROUND(
		AVG(WorkLifeBalance),
	3) as `Avg Work Life Balance`
FROM HRdata
GROUP BY JobRole
ORDER BY `Avg Work Life Balance` DESC;


-- 13. ATTRITION RATE VS MONTHLY INCOME STATS
WITH MonthlyIncome AS (
	SELECT
		*,
		CASE
			WHEN MonthlyIncome  < 10000 THEN "Low Income"
			WHEN MonthlyIncome < 20000 THEN "Medium Income"
			WHEN MonthlyIncome < 35000 THEN "High Income"
			ELSE "Very High Income"
		END as 'IncomeBand',
		CASE
			WHEN MonthlyIncome  < 10000 THEN 1
			WHEN MonthlyIncome < 20000 THEN 2
			WHEN MonthlyIncome < 35000 THEN 3
			ELSE 4
		END as 'SortIncomeBand'
	FROM HRdata
)
SELECT
	IncomeBand,
    ROUND(100 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(DISTINCT EmployeeNumber), 2) as `Attrition Rate`
FROM MonthlyIncome
GROUP BY IncomeBand, SortIncomeBand
ORDER BY SortIncomeBand ASC;



-- 14. ATTRITION RATE VS YEARS SINCE LAST PROMOTION
WITH PromotionYears AS (
	SELECT
		*,
		CASE
			WHEN YearsSinceLastPromotion < 2 THEN "0-2 Years"
			WHEN YearsSinceLastPromotion < 5 THEN "3-5 Years"
			WHEN YearsSinceLastPromotion < 10 THEN "6-10 Years"
			WHEN YearsSinceLastPromotion < 15 THEN "11-15 Years"
			WHEN YearsSinceLastPromotion < 20 THEN "16-20 Years"
			WHEN YearsSinceLastPromotion < 25 THEN "21-25 Years"
			WHEN YearsSinceLastPromotion < 30 THEN "26-30 Years"
			ELSE "30+ Years"
		END as "PromotionGroup",
		CASE
			WHEN YearsSinceLastPromotion < 2 THEN 1
			WHEN YearsSinceLastPromotion < 5 THEN 2
			WHEN YearsSinceLastPromotion < 10 THEN 3
			WHEN YearsSinceLastPromotion < 15 THEN 4
			WHEN YearsSinceLastPromotion < 20 THEN 5
			WHEN YearsSinceLastPromotion < 25 THEN 6
			WHEN YearsSinceLastPromotion < 30 THEN 7
			ELSE 8
		END as "SortPromotionGroup"
	FROM HRdata
)
SELECT
	PromotionGroup as `Promotion Years Group`,
    ROUND(100 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(DISTINCT EmployeeNumber), 2) as `Attrition Rate`
FROM PromotionYears
GROUP BY PromotionGroup, SortPromotionGroup
ORDER BY SortPromotionGroup ASC;


-- 15. ATTRITION RATE BY AGE
WITH AgeAttrition AS (
	SELECT
		*,
		CASE
			WHEN Age <= 25 THEN "18-25"
			WHEN Age <= 35 THEN "26-35"
			WHEN Age <= 45 THEN "36-45"
			WHEN Age <= 55 THEN "46-55"
			ELSE "55+"
		END as "AgeGroup"
	FROM HR1
)
SELECT
	AgeGroup as `Age Group`,
	ROUND(100 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(DISTINCT EmployeeNumber), 2) as `Attrition Rate`
FROM AgeAttrition
GROUP BY AgeGroup
ORDER BY `Attrition Rate` DESC;


-- 16. AVERAGE ATTRITION RATE BY JOB ROLE
SELECT
	JobRole,
    ROUND(
		100 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(DISTINCT EmployeeNumber),
	2) as `Avg Attrition Rate`
FROM HR1
GROUP BY JobRole
ORDER BY `Avg Attrition Rate` DESC;


