#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that calculates a probability
shinyUI(fluidPage(
  br(),
  # Application title
  titlePanel("Input Parameters"),
  
  # Sidebar with a slider input for test inputs 
  sidebarLayout(
    sidebarPanel(
       fluidRow(
      
      sliderInput("questions",
                   "Number of questions:",
                   min = 1,
                   max = 50,
                   value = 1),
    
    sliderInput("choices",
                "Number of choices:",
                min = 2,
                max = 10,
                value = 2),
    
  sliderInput("passing_grade",
              "Passing grade needed:",
              min = 1,
              max = 100,
              value = 1),
  br(),
  
  #Button to return value
  actionButton("go","Calc.Prob."), 
  
  #Button to reset display and values
  actionButton("reset", "Clear")
)),
  
    # Show probability
    mainPanel(h3("What's the Probability You Can Pass a Multiple Choice Test Strictly by Guessing?"),
       br(),
       br(),
       h4(textOutput("disp",inline = TRUE),"%"),
       br(),
       br(),
       br(),
       br(),
      
       #Read me!
       h5("How does this work?"),
       p("You won't need to download any additional programs for this app to run."), 
       br(),  
       p("You just need to choose, using the sliders on the left, the type of test in which you want to run the probabilities for."),
       br(),  
       p("The calculation is based on the binomial distribution and requires you to input the number of questions on the test (i.e. the number of trials),
         number of choices each question has (used to determine the probability for the binomial distribution), and 
         and the passing score needed for the test (used to help calculate the number of successes)"),
       br(),
       
       h5("Explanation on calculation"),
       p("The probability is calculated based on obtaining the exact minimum number of correct questions  
       needed to pass or better."),
       
       p("For instance...if there are 7 questions and the user needs 86% to pass, they need to get 
       all 7 questions correct since 6 out of 7 questions only gives a score of roughly 85.7%. No rounding is used."
       )
    )
  )
)
)