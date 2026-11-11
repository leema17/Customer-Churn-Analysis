# Customer Churn Analysis

An end-to-end data analytics project focused on understanding customer churn patterns and identifying customers at risk of leaving a telecommunications company.

The project combines Python, SQL, Machine Learning, and Power BI to transform customer data into meaningful business insights and actionable retention recommendations.

## Dashboard Preview

![Customer Churn Dashboard](Images/Final%20Dashboard%20.png)

## Project Objectives

- Analyze customer churn behavior and identify important churn patterns.
- Explore customer demographics, services, contracts, and payment methods.
- Use SQL to investigate churn rates across different customer segments.
- Build and evaluate machine learning models to predict customer churn.
- Develop a Power BI dashboard to present key findings.
- Provide business recommendations to support customer retention.

## Tools & Technologies

- **Python:** Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn
- **SQL:** MySQL
- **Machine Learning:** Logistic Regression, Random Forest
- **Business Intelligence:** Power BI
- **Documentation:** Jupyter Notebook, PDF

## Dataset Overview

The project uses the Telco Customer Churn dataset, containing 7,043 customer records.

- Customers who stayed: 5,174 (73.46%)
- Customers who churned: 1,869 (26.54%)

## Project Workflow

1. Data Understanding and Cleaning
2. Exploratory Data Analysis (EDA)
3. SQL Analysis
4. Data Preprocessing and Feature Scaling
5. Machine Learning Model Development
6. Model Evaluation
7. Power BI Dashboard Development
8. Business Insights and Recommendations

## Key Findings

- Month-to-month contracts had the highest churn rate (42.71%).
- Two-year contracts had the lowest churn rate (2.83%).
- Fiber optic customers had a churn rate of 41.89%.
- Customers using electronic checks had a churn rate of 45.29%.
- Customers who churned had a shorter average tenure than customers who stayed.

## Machine Learning Results

Two classification models were evaluated:

| Metric | Logistic Regression | Random Forest |
|---|---:|---:|
| Accuracy | 80.62% | 78.80% |
| Precision | 65.73% | 62.50% |
| Recall | 56.42% | 50.00% |
| F1-Score | 60.72% | 55.60% |
| ROC-AUC | 0.842 | 0.825 |

Logistic Regression achieved the higher ROC-AUC score among the two evaluated models.

### Threshold Adjustment

Adjusting the Logistic Regression classification threshold to 0.30 produced:

- Recall: 75.40%
- Precision: 51.93%
- F1-Score: 61.50%

Recall was an important metric because identifying more customers at risk of leaving can help businesses plan targeted retention activities.

## Business Recommendations

- Focus retention efforts on month-to-month contract customers.
- Investigate customer concerns related to fiber optic services.
- Review the customer experience for electronic check users.
- Encourage longer-term contracts where appropriate.
- Provide proactive support to customers who may be at risk of churning.

## Project Report

The complete project report is available here:

[View the Final Project Report](Reports/Day16_Final%20Report%20%26%20Portfolio%20Preparation.pdf)

## Author

Leema Fazl Mohammad

Computer Science Graduate | Aspiring Data Analyst / Data Scientist

## Project Files

### Python Notebooks

- [Day 01 – Project Setup](Notebooks/Day01_Project%20Setup.ipynb)
- [Day 02 – Exploratory Data Analysis](Notebooks/Day02_Exploratory%20Data%20Analysis.ipynb)
- [Day 03 – Data Cleaning & Preparation](Notebooks/Day03_Data%20Cleaning%20%26%20Preparation.ipynb)
- [Day 04 – Customer Profile & Service Analysis](Notebooks/Day04_Customer%20Profile%20%26%20Service%20Analysis.ipynb)
- [Day 05 – Deeper Customer & Service Analysis](Notebooks/Day05_Deeper%20Customer%20%26%20Service%20Analysis.ipynb)
- [Day 06 – Numerical Analysis & Visualization](Notebooks/Day06_Numerical%20Analysis%20%26%20Visualization.ipynb)
- [Day 07 – Data Preparation & Encoding](Notebooks/Day07_Data%20Preparation%20%26%20Encoding.ipynb)
- [Day 08 – Train-Test Split & Preparing for Machine Learning](Notebooks/Day08_TrainTest%20Split%20%26%20Preparing%20for%20Machine%20Learning.ipynb)
- [Day 09 – Classification & Logistic Regression](Notebooks/Day09_Classification%20%26%20Logistic%20Regression.ipynb)
- [Day 10 – Model Evaluation & Improvement](Notebooks/Day10_Model%20Evaluation%20%26%20Improvement.ipynb)
- [Day 14 – Machine Learning Model Comparison](Notebooks/Day14_Machine%20Learning%20Model%20Comparison.ipynb)

### SQL Analysis

- [Day 11 – SQL Basics](SQL/Day11_SQL%20Basics.sql)
- [Day 12 – Advanced SQL Analysis](SQL/Day12_Advanced%20SQL%20Analysis.sql)
- [Day 13 – SQL JOIN](SQL/Day13_SQL%20JOIN.sql)

### Power BI Dashboard

- [Day 15 – Customer Churn Analysis Dashboard](PowerBI/Day15_Customer_Churn_Analysis.pbix)

### Final Report

- [Day 16 – Final Report & Portfolio Preparation](Reports/Day16_Final%20Report%20%26%20Portfolio%20Preparation.pdf)

## Conclusion

This project demonstrates an end-to-end customer churn analysis workflow, combining data analysis, SQL, machine learning, and business intelligence to identify churn patterns and support data-driven customer retention strategies.
