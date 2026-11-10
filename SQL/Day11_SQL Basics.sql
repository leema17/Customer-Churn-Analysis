USE customer_churn;
SELECT COUNT(*) AS total_customers
FROM customers;
SELECT *
FROM customers
LIMIT 5;
SELECT COUNT(*) AS churned_customers
FROM customers
WHERE Churn = 'Yes';
SELECT COUNT(*) AS retained_customers
FROM customers
WHERE Churn = 'No';
SELECT Churn, COUNT(*) AS customer_count
FROM customers
GROUP BY Churn;
SELECT Contract, Count(*) AS customer_count
From customers
GROUP BY Contract;
SELECT Contract,Churn, Count(*) AS customer_count
From customers
WHERE Churn = 'Yes'
GROUP BY Contract;
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100,2) AS churn_rate
FROM customers
GROUP BY Contract;
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100,2) AS churn_rate
FROM customers
GROUP BY Contract
ORDER BY  churn_rate DESC;
SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100,
        2
    ) AS churn_rate
FROM customers
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;
SELECT Contract, PaymentMethod,
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS churned_customers,
ROUND(((SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/COUNT(*))*100),2) AS churn_rate
From customers 
GROUP BY PaymentMethod, Contract
ORDER BY churn_rate DESC;
SELECT InternetService,
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS churned_customers,
ROUND(((SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/COUNT(*))*100),2) AS churn_rate
From customers 
GROUP BY InternetService
ORDER BY churn_rate DESC;
SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100,
        2
    ) AS churn_rate
FROM customers
WHERE Contract = 'Month-to-month'
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;
SELECT TechSupport,
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END) AS churned_customers,
ROUND(((SUM(CASE WHEN Churn ='Yes' THEN 1 ELSE 0 END)/COUNT(*))*100),2) AS churn_rate
From customers 
GROUP BY TechSupport
ORDER BY churn_rate DESC;
SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100,
        2
    ) AS churn_rate
FROM customers
WHERE Contract = 'Month-to-month'
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;
SELECT
    Contract,
    PaymentMethod,
    COUNT(*) AS churned_customers
FROM customers
WHERE Churn = 'Yes'
GROUP BY Contract, PaymentMethod
ORDER BY churned_customers DESC;