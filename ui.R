shinyUI(pageWithSidebar(
  headerPanel("Body mass index (BMI) Calculator"),
  sidebarPanel(
    sliderInput('weight', 'What is you weight in kg',value = 70, min = 1, max = 200, step = 1),
    numericInput('height', 'What is you height in cm', value = 170, min = 30, max=300, step=1)
    
  ),
  mainPanel(
    h3('Your BMI'),
    h4('Your weight is'),
    verbatimTextOutput("inputWeight"),
    h4('You height is'),
    verbatimTextOutput("inputHeight"),
        h4('Which results in a BMI of '),
    verbatimTextOutput("bmi"),
    h4('Risk assessment '),
    verbatimTextOutput("risk")
    
    
  )
))