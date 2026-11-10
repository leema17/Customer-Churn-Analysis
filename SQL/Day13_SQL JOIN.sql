USE customer_churn;

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
        ROUND(
            100.0 * SUM(
                CASE
                    WHEN Churn = 'Yes' THEN 1
                    ELSE 0
                END
            ) / COUNT(*),
            2
        ) AS churn_rate
    FROM customers
    GROUP BY Contract
)
SELECT
    c.customerID,
    c.Contract,
    c.Churn,
    cs.total_customers,
    cs.churned_customers,
    cs.churn_rate
FROM customers AS c
INNER JOIN contract_stats AS cs
    ON c.Contract = cs.Contract
WHERE c.Churn = 'Yes'
ORDER BY cs.churn_rate DESC;
