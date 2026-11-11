# Customer Churn Analysis

An end-to-end data analytics project focused on understanding customer churn patterns and identifying customers at risk of leaving a telecommunications company.

The project combines Python, SQL, Machine Learning, and Power BI to transform customer data into meaningful business insights and actionable retention recommendations.

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

A threshold adjustment to 0.30 increased Logistic Regression recall to 75.40%, with a precision of 51.93%.

Recall was an important metric because identifying more customers at risk of leaving can help businesses plan targeted retention activities.

## Business Recommendations

- Focus retention efforts on month-to-month contract customers.
- Investigate customer concerns related to fiber optic services.
- Review the customer experience for electronic check users.
- Encourage longer-term contracts where appropriate.
- Provide proactive support to customers who may be at risk of churning.

## Project Report

The complete project report is available in the `Report` folder.

## Author

Leema Fazl Mohammad

Computer Science Graduate | Aspiring Data Analyst / Data Scientist
