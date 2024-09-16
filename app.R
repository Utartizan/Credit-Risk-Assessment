library(shiny)
library(shinythemes)
library(shinyWidgets)
library(ggplot2)
library(caret)
library(dplyr)
library(flexdashboard)
library(shinyFeedback)


ui <- fluidPage(
  theme = shinytheme("yeti"),
  
  # Application title
  fluidRow(
    
    column(12, align = "center",
           offset = 0.5,
           
           titlePanel("Credit Risk Assessment"))),
  
  
  
  fluidRow(
    
    column(12,
           offset = 0.5,
           align = "center",
           
           numericInput("age", "Age:", value = "18+", min = 18, max = 110),
           
           numericInput("income", "Annual Income:", value = "", min = 0),
           
           selectInput("length_Term", "Length of Loan:",
                       choices = c("Short Term", "Long Term")),
           
           selectInput("ownershipStatus", "Ownership Status:", 
                       choices = c("Own", "Mortgage", "Rent", "None")),
           
           numericInput("employment_length", "Employment Length:", value = "", min = 0, max = 100),
           
           selectInput("loanIntent", "Loan Intent:", 
                       choices = c("PERSONAL", "EDUCATION", "MEDICAL", "VENTURE", "HOMEIMPROVEMENT", "DEBTCONSOLIDATION")),
           
           selectInput("bankruptcies", "Previous Bankruptcies?",
                       choices= c("No", "Yes")),
           
           numericInput("loan_amount", "Loan Amount:", value = "", min = 0, max = 9999999),
           
           actionButton("prediction", "Predict Default Risk")
    ),
    
    fluidRow(
      column(12, align = "center",
             gaugeOutput("prediction")
             
      )
    )
  )
)


server <- function(input, output) {
  # this thing here reads the csv file named "mock_loan_data.csv" and
  # tells the code to learn it so it can be reused for the training
  # which will be seen below.
  loan_data <- read.csv("mock_loan_data.csv")
  
  loan_data <- loan_data %>%
    
    # the 'as.factor' basically transforms the factors listed above and makes it
    # something that will effect the prediction
    mutate(default = as.factor(default),
           
           length_Term = as.factor(length_Term),
           
           ownershipStatus = as.factor(ownershipStatus),
           
           loanIntent = as.factor(loanIntent),
           
           bankruptcies = as.factor(bankruptcies))
  
  # This utilises caret predictive models to train and
  # set up the simple model utilised to generate the predictions (e.g., logistic regression)
  
  # glm = regression model
  # logistic regression models should use a binomial family
  model <- train(default ~ ., data = loan_data, method = "glm", family = "binomial")
  
  observeEvent(input$prediction, {
    
    # This part here basically takes each data column
    # from the "mock_loan_data.csv" file and integrates it here for calculation 
    
    new_data <- data.frame(
      
      # age is equal to the age column from 'loan_data' which is the .csv file
      # the $ sign is basically used to allow the code to access and extract specific
      # parts from the file included 
      age = input$age,
      
      # income is equal to the income column from 'loan_data' which is the .csv file
      income = input$income,
      
      # you get the gist.
      length_Term = input$length_Term,
      
      ownershipStatus = input$ownershipStatus,
      
      employment_length = input$employment_length,
      
      loanIntent = input$loanIntent,
      
      loan_amount = input$loan_amount,
      
      bankruptcies = input$bankruptcies
    )
    
    # This line of code executes the prediction of the default risk associated
    # with the inputs of the user
    prediction <- predict(model, new_data, type = "prob")[,2]
    
    # This function below outputs the prediction obtained from the linear regression model
    # renderGauge is basically an argument or whatever that generates a gauge
    # makes it look more fancier than the code just specifically outputting a value
    # via text
    
    output$prediction <- renderGauge({
      
      gauge(round(prediction * 100, 2),
            
            min = 0, 
            
            max = 100,
            
            symbol = '%',
            
            gaugeSectors(success = c(0, 40), 
                         warning = c(40, 60), 
                         danger = c(60, 100))
      )
      
    })
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
