
# **Welcome to the Home Loan Default Risk Predictor App!**

This app helps you assess the risk of loan default based on various user inputs. It uses a logistic regression model to predict the probability of default.

## **How to install and run the application:**

1. Install R Studio
2. Click on File -> Open Project
3. Click on the .Rproj file
4. Run the application or type [CTRL + SHIFT + K]

## **How to Use the App:**

1.  Enter the loan amount **(must be between £1,100 and £110,000)**.

2.  Provide the mortgage due amount **(must be non-negative)**.

3.  Enter the property value **(must be non-negative)**.

4.  Select the reason for the loan **(Home Improvement or Debt Consolidation)**.

5.  Choose your job category **(Manager, Office, Other, Professional/Executive, Sales, Self-Hired)**.

6.  Enter the years at your present job **(must be between 0 and 100 years)**.

7.  Enter the number of major derogatory reports **(must be between 0 and 10)**.

8.  Enter the number of delinquent credit lines **(must be between 0 and 19)**.

9.  Enter the age of your oldest credit line in months **(must be between 0 and 100)**.

10. Enter the number of recent credit inquiries **(must be between 0 and 100)**.

11. Enter the number of credit lines **(must be between 0 and 100)**.

12. Enter your debt-to-income ratio **(must be between 0 and 100)**.

Click the **"Predict Default Risk"** button to see the results.

## **Methodology:** 

The app uses a logistic regression model trained on historical loan data to predict the probability of default. The model considers various factors such as loan amount, mortgage due, property value, job category, years at present job, number of derogatory reports, number of delinquent credit lines, age of oldest credit line, number of recent credit inquiries, number of credit lines, and debt-to-income ratio.

## **Model Details:** 

The logistic regression model is used to predict the probability of default. Key features include loan amount, mortgage due, property value, job category, years at present job, number of derogatory reports, number of delinquent credit lines, age of oldest credit line, number of recent credit inquiries, number of credit lines, and debt-to-income ratio.

## **Interpretation of Results:** 

The bar output shows the predicted probability of default. The bar is divided into three colors:

-   **Green (0-35%)**: Low risk of default.

-   **Yellow (36-64%)**: Moderate risk of default.

-   **Red (65-100%)**: High risk of default.

## **Acknowledgments:** 

This app was developed with help from the YaRrr! Pirate's Guide to R and the inbuilt R documentation.

## **Data Source:** 

The model is trained on a dataset named "hmeq.csv," which includes historical loan data with various features. The dataset is sourced from creditriskanalytics.net. As a token of appreciation I will include their books as references below.

In the "hmeq.csv" dataset, the results for the reasoning of the home equity loans as well as the job options have been renamed to their full version (e.g. ProfExe -\> Professor/Executive) for user convenience.


## **References:**

-   B. Baesens, D. Roesch, H. Scheule, *Credit Risk Analytics: Measurement Techniques, Applications and Examples in SAS*, Wiley, 2016.

-   H. Scheule, D. Roesch, B. Baesens, *Credit Risk Analytics: The R Companion*, Scheule Roesch Baesens, 2017.
