# Business Question
How to best predict which customers are going to churn so that the telecom company can proactively go to them and provide them better services beforehand

# Dataset
Data has been retreived from [Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn) and it is orginated from [IBM](https://www.ibm.com/docs/en/cognos-analytics/11.1.0?topic=samples-telco-customer-churn). This dataset tracks a fictional telecom company's customer churn based on various factors : 19 independent variables including customers' demographic information, account information, and services information. The dataset consists of 7043 customer data and the response variable `Churn` indicates whether the customer departed or not.

# Exploratory Data Analysis

images 1~4
![Tux, the Linux mascot](/assets/images/tux.png)

After checking of missing data, there were 11 missing values in the response variable `Churn` and I removed them. Among 19 features, only 2 were numerical and 17 were categorical variables. Plotting the numerical variables, both features were right-skewed distributed, but I have decided not to make any transformation or manipulation since they were good enough and without transformation we can keep the interpretation simpler. Constructing a correlation plot of `Churn` with other independent variables, tenure and two year contracts seem to be negatively correlated with churn. On the other hand, month to month contracts, absence of online security and tech support seem to be positively correlated with churn.

## A. Demographics

IMAGES 5~9


## B. Customer Account Information

IMAGES 10~16

## C. Services Information

IMAGES 17

# Data Preparation
## A. Resampling
## B. Scaling

# Modeling
## A. Logistic Regression -- baseline model
IMAGES 18~19
## B. Random Forest
IMAGES 20
## C. Support Vector Machine (SVM)
IMAGES 21
## D. ADA Boost
IMAGES 22
## E. XG Boost
IMAGES 23
# Results
## Key foundings and Recommendations
IMAGES 24
## Potential next steps or further research topics
