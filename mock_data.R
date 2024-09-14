library(dplyr)

set.seed(123)

mock_data <- data.frame(
  age = sample(18:110, 1000, replace = TRUE),
  income = sample(20000:150000, 1000, replace = TRUE),
  length_Term = sample(c("Short Term", "Long Term"), 1000, replace = TRUE),
  ownershipStatus = sample(c("Own", "Mortgage", "Rent", "None"), 1000, replace = TRUE),
  employment_length = sample(0:40, 1000, replace = TRUE),
  loanIntent = sample(c("Education", "Business", "Debt Consolidation", "Recreational", "Other"), 1000, replace = TRUE),
  loan_amount = sample(1000:50000, 1000, replace = TRUE),
  bankruptcies = sample(c("No", "Yes"), 1000, replace = TRUE),
  default = sample(c(0, 1), 1000, replace = TRUE)
)

write.csv(mock_data, "mock_loan_data.csv", row.names = FALSE)


