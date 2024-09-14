**Welcome to the Credit Risk Assessment App!**

This app helps you assess the risk of loan default based on various user inputs. It uses a logistic regression model to predict the probability of default.

**How to Use the App:**

1. Enter your age (must be between 18 and 110).

2. Provide your annual income (must be non-negative).

3. Select the length of the loan (Short Term or Long Term).

4. Choose your ownership status (Own, Mortgage, Rent, None).

5. Enter your employment length (must be between 0 and 100 years).

6. Select your loan intent (Education, Business, Debt Consolidation, Recreational, Other).

7. Indicate if you have had any previous bankruptcies (Yes or No).

8. Enter the loan amount (must be between £0 and £9,999,999).

9. Click the "Predict Default Risk" button to see the results.

**Methodology:**
The app uses a logistic regression model trained on historical loan data to predict the probability of default. The model considers various factors such as age, income, loan amount, and more.

**Model Details:**
The logistic regression model is used to predict the probability of default. Key features include age, income, loan amount, and employment length.

**Interpretation of Results:**

The gauge output shows the predicted probability of default. The gauge is divided into three sectors:

- **Success (0-40%)**: Low risk of default.

- **Warning (40-60%)**: Moderate risk of default.

- **Danger (60-100%)**: High risk of default.

**Acknowledgments:**
This app was developed with help from the YaRrr! Pirate's Guide to R and the inbuilt R documentation.

**Data Source:**
The model is trained on a dataset named "mock_loan_data.csv," which includes historical loan data with various features made by "mock_data.R".
