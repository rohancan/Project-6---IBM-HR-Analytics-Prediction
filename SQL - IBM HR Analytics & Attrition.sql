/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Age]
      ,[Attrition]
      ,[BusinessTravel]
      ,[DailyRate]
      ,[Department]
      ,[DistanceFromHome]
      ,[Education]
      ,[EducationField]
      ,[EmployeeCount]
      ,[EmployeeNumber]
      ,[EnvironmentSatisfaction]
      ,[Gender]
      ,[HourlyRate]
      ,[JobInvolvement]
      ,[JobLevel]
      ,[JobRole]
      ,[JobSatisfaction]
      ,[MaritalStatus]
      ,[MonthlyIncome]
      ,[MonthlyRate]
      ,[NumCompaniesWorked]
      ,[Over18]
      ,[OverTime]
      ,[PercentSalaryHike]
      ,[PerformanceRating]
      ,[RelationshipSatisfaction]
      ,[StandardHours]
      ,[StockOptionLevel]
      ,[TotalWorkingYears]
      ,[TrainingTimesLastYear]
      ,[WorkLifeBalance]
      ,[YearsAtCompany]
      ,[YearsInCurrentRole]
      ,[YearsSinceLastPromotion]
      ,[YearsWithCurrManager]
  FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]

  -- Obtain the first 10 rows of the "IBM HR Analytics" dataset
  SELECT TOP 10 * FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]

  -- Obtain all the IBM employees above the age of 40
  SELECT * FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  WHERE Age > 40;

  -- Obtain the top 10 IBM employees with the highest monthly income
  SELECT TOP 10 * FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  ORDER BY MonthlyIncome DESC;

  -- Obtain the number of employees above the age of 40
  SELECT COUNT(*) AS [Employees Above 40 Years] FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  WHERE Age > 40;

  -- Obtain the employees who are above the age of 40 & are from the "Life Sciences" field
  SELECT * FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  WHERE Age > 40 AND EducationField = 'Life Sciences';

  -- Find the number of employees who meet the above condition
  SELECT COUNT(*) AS [Life Sciences Employees Above 40 years] 
  FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  WHERE Age > 40 AND EducationField = 'Life Sciences';

  -- Find the count of employees grouped by the attribute "BusinessTravel"
  SELECT BusinessTravel, COUNT(BusinessTravel) AS [Number of IBM Employees] 
  FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  GROUP BY BusinessTravel
  ORDER BY [Number of IBM Employees] DESC;

  -- Find the number of IBM employees grouped by the attribute "EducationField"
  SELECT EducationField, COUNT(EducationField) AS [Number of IBM Employees] 
  FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  GROUP BY EducationField
  ORDER BY [Number of IBM Employees] DESC;

  -- Find the number of IBM employees in each department
  SELECT Department, COUNT(Department) AS [Number of IBM Employees]
  FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  GROUP BY Department
  ORDER BY [Number of IBM Employees] DESC;

  -- Group the IBM employees by their Gender
  SELECT Gender, COUNT(Gender) AS [GenderCount]
  FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  GROUP BY Gender
  ORDER BY [GenderCount] DESC;

  -- Group the IBM employees by their Job Role
  SELECT JobRole, COUNT(JobRole) AS [Number of IBM Employees]
  FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  GROUP BY JobRole
  ORDER BY [Number of IBM Employees] DESC;

  -- Group the IBM Employees by their marital status
  SELECT MaritalStatus, COUNT(MaritalStatus) AS [Marital Status Count]
  FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  GROUP BY MaritalStatus
  ORDER BY [Marital Status Count] DESC;

  -- Find the number of employees grouped by "Attrition"
  SELECT Attrition, COUNT(Attrition) AS [Number of IBM Employees]
  FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
  GROUP BY Attrition
  ORDER BY [Number of IBM Employees] DESC;

  -- Find the number of employees grouped by "Attrition" & "BusinessTravel"
SELECT Attrition, BusinessTravel, COUNT(*) AS NumberOfEmployees
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Attrition, BusinessTravel;

-- Find the number of employees grouped by "Attrition" & "Department"
SELECT Attrition, Department, COUNT(*) AS NumberOfEmployees
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Attrition, Department
ORDER BY Attrition, Department DESC;

-- Obtain the distribution of the employee education across different departments
SELECT Department, EducationField, COUNT(*) AS Employees_Count
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Department, EducationField
ORDER BY Department, EducationField DESC;

-- Find the number of employees grouped by the attrition & education field
SELECT Attrition, EducationField, COUNT(*) AS Employees_Count
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Attrition, EducationField
ORDER BY Attrition, EducationField DESC;

-- Find the number of employees grouped by the "Gender", "Attrition", "JobRole"
SELECT Gender, Attrition, JobRole, COUNT(*) as EmployeeCount
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Gender, Attrition, JobRole
ORDER BY Gender, Attrition, JobRole DESC;

-- Find the number of employees grouped by the attrition & marital status
SELECT Attrition, MaritalStatus, COUNT(*) AS Employees_Count
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Attrition, MaritalStatus
ORDER BY Attrition, MaritalStatus DESC;

-- Obtain the distribution of the employee performance ratings across different departments
SELECT Department,
       PerformanceRating,
       COUNT(*) AS Count_of_employees
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Department,
         PerformanceRating
ORDER BY Department,
         Count_of_employees DESC;

-- Obtain the distribution of the employees' environment satisfaction across different departments
SELECT Department,
       EnvironmentSatisfaction,
       COUNT(*) AS Count_of_employees
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Department,
         EnvironmentSatisfaction
ORDER BY Department,
         Count_of_employees DESC;

-- How to convert the data type for the attribute 'MonthlyRate'
ALTER TABLE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
ALTER COLUMN MonthlyRate numeric(10, 2);

-- How to convert the data type for the attribute 'MonthlyIncome'
ALTER TABLE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
ALTER COLUMN MonthlyIncome numeric(10, 2);

-- Obtain the average monthly rate & income for each job
SELECT JobRole,
       ROUND(AVG(MonthlyRate), 2) AS avg_monthly_rate,
       ROUND(AVG(Monthlyincome), 2) AS avg_monthly_income
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY JobRole
ORDER BY avg_monthly_income DESC;

-- Obtain the average monthly rate & income for each role in each department
SELECT Department,
       JobRole,
       ROUND(AVG(MonthlyRate), 2) AS avg_monthly_rate,
       ROUND(AVG(Monthlyincome), 2) AS avg_monthly_income
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY Department, 
         JobRole
ORDER BY Department, 
         avg_monthly_income DESC;

-- Add another column called "Age_Range"
ALTER TABLE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
ADD age_range VARCHAR(20);

UPDATE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
SET age_range = 
    CASE
        WHEN age BETWEEN 18 AND 24 THEN 'Very Young'
        WHEN age BETWEEN 25 AND 34 THEN 'Young'
        WHEN age BETWEEN 35 AND 44 THEN 'Middle-Aged'
        WHEN age BETWEEN 45 AND 54 THEN 'Old'
        WHEN age BETWEEN 55 AND 60 THEN 'Very Old'
    END;


-- Obtain the distribution of the employee attrition across different age ranges
SELECT age_range,
       Attrition,
       COUNT(*) AS count_of_employees
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY age_range,
         Attrition
ORDER BY age_range;

-- Obtain the average monthly income of the IBM Employees across different age ranges
SELECT age_range, AVG(MonthlyIncome) AS mean_income
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY age_range;

-- Add another column called "EnvironmentSatisfaction Category"
ALTER TABLE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
ADD [EnvironmentSatisfaction Category] VARCHAR(20);

UPDATE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
SET [EnvironmentSatisfaction Category] = 
    CASE
        WHEN EnvironmentSatisfaction BETWEEN 1 AND 2 THEN 'Medium'
        WHEN EnvironmentSatisfaction BETWEEN 3 AND 4 THEN 'Satisfied'
        WHEN EnvironmentSatisfaction BETWEEN 4 AND 6 THEN 'Highly Satisfied'
       
    END;

-- Obtain the environment satisfaction distribution to the IBM Employees
SELECT [EnvironmentSatisfaction Category], 
       COUNT(*) AS num_of_employees
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY [EnvironmentSatisfaction Category];

-- Convert the column "JobSatisfaction" to numeric
ALTER TABLE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
ALTER COLUMN JobSatisfaction numeric(10, 2);

-- Add another column called "Job Satisfaction Category"
ALTER TABLE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
ADD [JobSatisfaction Category] VARCHAR(20);

UPDATE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
SET [JobSatisfaction Category] = 
    CASE
        WHEN JobSatisfaction BETWEEN 1 AND 2 THEN 'Not Satisfied'
        WHEN JobSatisfaction BETWEEN 3 AND 4 THEN 'Satisfied'
       
    END;

-- Replace the records under the attribute "WorkLifeBalance"
UPDATE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
SET WorkLifeBalance = 
    CASE 
        WHEN WorkLifeBalance = 1 THEN 'Very Poor'
        WHEN WorkLifeBalance = 2 THEN 'Poor'
        WHEN WorkLifeBalance = 3 THEN 'Good'
        WHEN WorkLifeBalance = 4 THEN 'Excellent'
        
    END;

-- Show the distribution of the work-life balance among employees

SELECT WorkLifeBalance,
       COUNT(*) AS num_of_employees,
       CONCAT(ROUND(100 * (COUNT(*) * 1.0 / (SELECT COUNT(*) FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition])), 2), '%') AS Percentage
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
GROUP BY WorkLifeBalance
ORDER BY CASE 
        WHEN WorkLifeBalance = 'Good' THEN 1
        WHEN WorkLifeBalance = 'Very-Good' THEN 2
        ELSE 3
        END;

-- Replace the records under the attribute "JobInvolvement" 
UPDATE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
SET JobInvolvement = 
    CASE 
        WHEN JobInvolvement BETWEEN  1 AND 2 THEN 'Involved'
        WHEN JobInvolvement BETWEEN 3 AND 4 THEN 'Highly-Involved'
        
        
    END;


-- Show the percentage & count of involved & highly involved employees
SELECT JobInvolvement,
       COUNT(*) AS num_of_employees,
       CONCAT(ROUND(100 * (COUNT(*) * 1.0 / (SELECT COUNT(*) FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition])), 2), '%') AS Percentage
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
WHERE JobInvolvement IN ('Involved', 'Highly-Involved')
GROUP BY JobInvolvement
ORDER BY JobInvolvement;

-- Replace the records under the attribute "EnvironmentSatisfaction"
UPDATE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
SET EnvironmentSatisfaction = 
    CASE 
        WHEN EnvironmentSatisfaction BETWEEN  1 AND 2 THEN 'Poor'
        WHEN EnvironmentSatisfaction BETWEEN 3 AND 4 THEN 'Excellent'
        
END;

-- Show the percentage & count of the employees' environment satisfaction
SELECT EnvironmentSatisfaction,
       COUNT(*) AS num_of_employees,
       CONCAT(ROUND(100 * (COUNT(*) * 1.0 / (SELECT COUNT(*) FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition])), 2), '%') AS Percentage
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
WHERE EnvironmentSatisfaction IN ('Poor', 'Excellent')
GROUP BY EnvironmentSatisfaction
ORDER BY EnvironmentSatisfaction;

-- Replace the records under the attribute "RelationshipSatisfaction"
UPDATE [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
SET RelationshipSatisfaction = 
    CASE 
        WHEN RelationshipSatisfaction BETWEEN  1 AND 2 THEN 'Terrible'
        WHEN RelationshipSatisfaction BETWEEN 3 AND 4 THEN 'Excellent'
        
END;

-- Show the percentage & count of the employees' relationship satisfaction
SELECT RelationshipSatisfaction,
       COUNT(*) AS num_of_employees,
       CONCAT(ROUND(100 * (COUNT(*) * 1.0 / (SELECT COUNT(*) FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition])), 2), '%') AS Percentage
FROM [IBM].[dbo].[WA_Fn-UseC_-HR-Employee-Attrition]
WHERE RelationshipSatisfaction IN ('Terrible', 'Excellent')
GROUP BY RelationshipSatisfaction
ORDER BY RelationshipSatisfaction;



