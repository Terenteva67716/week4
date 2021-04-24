library(shiny)
bodymassindex <- function(height,mass) mass/(height/100)^2
shinyServer(
  function(input, output) {
    output$prediction <- renderPrint({bodymassindex(input$height, input$mass)})
  } )