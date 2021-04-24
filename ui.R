library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Calculate Your Body Mass Index"),
    sidebarPanel(
      numericInput('height', 'Your height: (centimeters)', 170, min = 50, max = 220,
                   step = 5),
      numericInput('mass', 'Your mass: (kilograms)', 60, min = 30, max = 200,
                   step = 5),
      submitButton('Calculate BMI')
    ),
    mainPanel(
      h4('Your BMI'),
      verbatimTextOutput("prediction"),
      h4('BMI Categories:'),
      h5('Underweight = <18.5'),
      h5('Normal weight = 18.5–24.9'),
      h5('Overweight = 25–29.9'),
      h5('Obesity = BMI of 30 or greater '))
    ) )