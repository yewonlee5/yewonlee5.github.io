# Business Question
How to best predict which customers are going to churn so that the telecom company can proactively go to them and provide them better services beforehand

# Dataset
Data has been retreived from [Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn) and it is orginated from [IBM](https://www.ibm.com/docs/en/cognos-analytics/11.1.0?topic=samples-telco-customer-churn). This dataset tracks a fictional telecom company's customer churn based on various factors : 19 independent variables including customers' demographic information, account information, and services information. The dataset consists of 7043 customer data and the response variable `Churn` indicates whether the customer departed or not.

# Exploratory Data Analysis

<p align="center">
  <img height="300" src="images/1_churn_bar.png">
  <img height="300" src="images/2_monthly_charges.png">
  <img height="300" src="images/3_total_charges.png">
  <img width="1000" src="images/4_cor_chrun.png">
</p>


After checking of missing data, there were 11 missing values in the response variable `Churn` and I removed them. Among 19 features, only 2 were numerical and 17 were categorical variables. Plotting the numerical variables, both features were right-skewed distributed, but I have decided not to make any transformation or manipulation since they were good enough and without transformation we can keep the interpretation simpler. Constructing a correlation plot of `Churn` with other independent variables, tenure and two year contracts seem to be negatively correlated with churn. On the other hand, month to month contracts, absence of online security and tech support seem to be positively correlated with churn.

## A. Demographics


<p align="center">
  <img height="300" src="images/5_gender.png">
</p>

<p align="center">
  <img height="300" src="images/6_senior.png">
  <img height="300" src="images/7_senior_churn.png">
</p>
  
<p align="center">
  <img height="300" src="images/8_dependents_partner.png">
  <img height="300" src="images/9_partner_churn.png">
</p>

Analyzing demographic variables, about half of the customers in our dataset are male while the other half are female. Most of our customers in the data set are younger people and senior citizens have almost double the churn rate than younger population. About 50% of the customers have a partner, while only 30% of the total customers have dependents. Among the customers who have a partner, only about half of them also have a dependentd. Among the customers who do not have any partner, a majority of them do not have any dependents.

## B. Customer Account Information

IMAGES 10~16
![Tenure](/images/10_tenure.png)
![Churn_by_Tenure](/images/11_tenure_churn.png)
![Contract](/images/12_contract.png)
![Tenure_Contract](/images/13_tenure_contract.png)
![Monthly_Total_charges](/images/14_monthly_total.png)
![Churn_by_Monthly_charge](/images/15_monthly_churn.png)
![Churn_by_Total_charge](/images/16_total_churn.png)

## C. Services Information

![Services](/images/17_services.png)

# Data Preparation
## A. Resampling
## B. Scaling

# Modeling
## A. Logistic Regression -- baseline model
![Logistic_regression](/images/18_LR_1.png)
![Logistic_regression](/images/19_LR_2.png)

## B. Random Forest
![Random_forest](/images/20_RF.png)

## C. Support Vector Machine (SVM)
![SVM](/images/21_SVM.png)

## D. ADA Boost
![ADAboost](/images/22_ADA.png)

## E. XG Boost
![XGboost](/images/23_XG.png)

# Results
## Key foundings and Recommendations
![ROC_AUC](/images/24_ROC.png)

## Potential next steps or further research topics
