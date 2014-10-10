shinyUI(pageWithSidebar(
  headerPanel("Body mass index (BMI) Calculator"),
  
  
  sidebarPanel(
    h4 ('The basic goal of this project is the create a shiny app that will return your body mass index and assess whether you are overweight underweight or have nothing to worry about. This is a crude estimate as it does not account for wether weight is due to muscle mass or fat.'),
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