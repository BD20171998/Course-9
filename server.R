#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/



library(shiny)

# Define server logic required to calculate the binomial probability
shinyServer(function(input, output,session) {

  observeEvent(input$go, {
  output$disp <- renderText({
    
    # Calculate binomial probability and return as a percentage
    
   if(input$passing_grade==100)
   {x<-dbinom(input$questions,input$questions,1/input$choices)}
    
  else
    x    <- 1-pbinom(floor((input$passing_grade/100)*input$questions),input$questions,1/input$choices)
   
  x*100 
    
  })
  })
  
 #Reset slider values to default amounts
  observeEvent(input$reset,{
    updateSliderInput(session,"passing_grade",value=1)
    updateSliderInput(session,"questions",value = 1)
    updateSliderInput(session,"choices",value = 2)
    output$disp <- renderText({""})
    
  })
  
  
})
