bmi <- function(weight, height){weight/((height/100)^2)} 
weightLevel<-function(bmi)
{
  if (bmi<15) {print("very severely underweight")} 
  else if (bmi>=15 & bmi<16) {print("Severely underweight")}
  else if (bmi>=16 & bmi<18.5) {print("Underweight")}
  else if (bmi>=18.5 & bmi<25) {print("Normal (healthy weight)")}
  else if (bmi>=25 & bmi<30) {print("Overweight")}
  else if (bmi>=30 & bmi<35) {print("Moderately obese")}
  else if (bmi>=35 & bmi<40) {print("Severely obese")}
  else if (bmi>=40 & bmi<16) {print("Very severely obese")}
  else if (bmi>=40 & bmi<16) {print("Something is wrong")}
  }

shinyServer(
  function(input, output) {
    output$inputWeight <- renderPrint({input$weight})
    output$inputHeight <- renderPrint({input$height})
    output$bmi <- renderPrint({bmi(input$weight,input$height)})
    output$risk<-renderPrint({weightLevel(bmi(input$weight,input$height))})
  }
)