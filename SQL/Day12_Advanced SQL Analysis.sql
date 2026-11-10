USE customer_churn;
SELECT COUNT(*) AS customers_above_average
FROM customers
WHERE MonthlyCharges >
(
   SELECT AVG(MonthlyCharges) FROM customers
);
SELECT COUNT(*) AS churned_above_average
FROM customers
WHERE Churn = 'Yes'
  AND MonthlyCharges >
(
    SELECT AVG(MonthlyCharges)
    FROM customers
);
SELECT COUNT(*) AS customers_above_average
FROM customers
WHERE Churn = 'Yes'
AND Tenure >
(
    SELECT AVG(Tenure)
    FROM customers
    WHERE Churn = 'Yes'
);
SELECT customerID, MonthlyCharges
FROM customers
WHERE MonthlyCharges =
(
    SELECT MAX(MonthlyCharges)
    FROM customers
);
SELECT customerID, tenure
FROM customers
WHERE tenure =
(
    SELECT MAX(tenure)
    FROM customers
);
SELECT customerID, tenure, MonthlyCharges
FROM customers
WHERE MonthlyCharges >
(
    SELECT AVG(MonthlyCharges)
    FROM customers
)
AND Tenure < (
    SELECT AVG(Tenure)
    FROM customers
);
SELECT customerID, tenure, MonthlyCharges
FROM customers
WHERE MonthlyCharges >
(
    SELECT AVG(MonthlyCharges)
    FROM customers
    WHERE Contract = 'Month-to-month'
)
AND Tenure < (
    SELECT AVG(tenure)
    FROM customers
);

WITH churned_customers AS (
    SELECT customerID,tenure
    FROM customers
    WHERE Churn='Yes'
)
SELECT customerID,tenure
FROM churned_customers
WHERE tenure < 12;

-- first way to solve 
WITH churned_customers AS (
    SELECT Contract, COUNT(*) AS churned_count
    FROM customers
    WHERE Churn = 'Yes'
    GROUP BY Contract
)
SELECT Contract, churned_count
FROM churned_customers;
-- second way to solve 

WITH churned_customers AS (
    SELECT Contract
    FROM customers
    WHERE Churn = 'Yes'
)
SELECT Contract, COUNT(*) AS churned_count
FROM churned_customers
GROUP BY Contract;
WITH contract_stats AS (
    SELECT Contract, COUNT(*) AS total_customers, 
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
    FROM customers
    GROUP BY Contract
)
SELECT Contract, total_customers, churned_customers,
ROUND((churned_customers/total_customers)*100.0,2 )AS churn_rate
FROM contract_stats
;

WITH contract_stats AS (
    SELECT
        Contract,
        COUNT(*) AS total_customers,
        SUM(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) AS churned_customers,
        AVG(
            CASE
                WHEN Churn = 'Yes' THEN MonthlyCharges
                ELSE NULL
            END
        ) AS avg_monthly_charges_churned
    FROM customers
    GROUP BY Contract
)
SELECT
    Contract,
    total_customers,
    churned_customers,
    ROUND(
        churned_customers * 100.0 / total_customers,
        2
    ) AS churn_rate,
    avg_monthly_charges_churned
FROM contract_stats
ORDER BY churn_rate DESC;



