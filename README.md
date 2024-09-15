# Welcome to the Credit Risk Assessment App!

I made this app pretty quickly on R Studio to help display my capabilities regarding utilising R code as well as my ability to learn new concepts effectively.

For guidance, I used the YaRrr! Pirate's Guide to R as learning material. (e.g. For the logistic regression, I referred to chapter 15.5 for help)

To access the book, please visit this link: https://bookdown.org/ndphillips/YaRrr/

Since I knew that logistic regressions were widely used for circumstances such as this, I knew making this would be a project to enjoy spending time on.

I also used the inbuilt R documentation, mainly for visualisation purposes for anything related to shiny, shinythemes, shinywidgets, etc.

## How to replicate:

1. Download the entire zip file
2. Download and open R Studio
3. Click on "File" on the top right, then select "Open Project" or "Open Project in new session"
4. Select the "Credit Risk Assessment.Rproj" file

## How to Use the App:

1. Enter your age (must be between 18 and 110).

2. Provide your annual income (must be non-negative).

3. Select the length of the loan (Short Term or Long Term).

4. Choose your ownership status (Own, Mortgage, Rent, None).

5. Enter your employment length (must be between 0 and 100 years).

6. Select your loan intent (Education, Business, Debt Consolidation, Recreational, Other).

7. Indicate if you have had any previous bankruptcies (Yes or No).

8. Enter the loan amount (must be between £0 and £9,999,999).

9. Click the "Predict Default Risk" button to see the results.

## Methodology:

The app uses a logistic regression model trained on historical loan data to predict the probability of default. The model considers various factors such as age, income, loan amount, and more.

## Model Details:
The logistic regression model is used to predict the probability of default. Key features include age, income, loan amount, and employment length.

## Interpretation of Results:

The gauge output shows the predicted probability of default. The gauge is divided into three sectors:

- **Success (0-40%)**: Low risk of default.

- **Warning (40-60%)**: Moderate risk of default.

- **Danger (60-100%)**: High risk of default.

## Acknowledgments:
This app was developed with help from the YaRrr! Pirate's Guide to R and the inbuilt R documentation.

## Data Source:
The model is trained on a dataset named "mock_loan_data.csv," which includes historical loan data with various features made by "mock_data.R".
