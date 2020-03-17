library(rsconnect)
library(shiny)

options(rsconnect.http.trace = TRUE)
options(rsconnect.http.verbose = TRUE)


server <- function(input, output) {
  bmi_calc <- function(weight,height) (weight/(height/100)^2)
  output$inputValue1 <- renderPrint({input$wt})
  output$inputValue2 <- renderPrint({input$ht})
  output$results <- renderPrint({bmi_calc(input$wt, input$ht)})
}
