library(rsconnect)
library(shiny)

options(rsconnect.http.trace = TRUE)
options(rsconnect.http.verbose = TRUE)

ui <- fluidPage(
  titlePanel("BMI"),
  sidebarPanel(
    numericInput('wt', 'Weight in Kg', 70, min = 30, max = 200),
    numericInput('ht', 'Height in cm', 165, min = 50, max = 250),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Results'), 
    h4('Your Weight'),
    verbatimTextOutput("inputValue1"),
    h4('Your Height'),
    verbatimTextOutput("inputValue2"),
    h4('Your BMI is '),
    verbatimTextOutput("results")
  )
)

