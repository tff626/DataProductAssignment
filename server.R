library(shiny)

# Define server logic for slider examples
shinyServer(
  function(input, output) {
   output$text3 <- renderText({     
        if (input$submit == 0) ""
        else if (input$submit == 1) "Thanks a lot for your participation! Here is a list of scores based on your answers. Your total score is at the bottom."
        else "You have already submitted your answers."
    }) 
    # Reactive expression to compose a data frame containing all of the values
    sliderValues <- reactive({
    # Compose data frame
    if (input$submit > 0) {
    data.frame(
      Number = c("Question1", 
               "Question2",
               "Question3", 
               "Question4",
               "Question5", 
               "Question6",
               "Question7", 
               "Question8",
               "Question9", 
               "Question10",
               "Question11", 
               "Question12",
               "Question13", 
               "Question14",
               "Question15", 
               "Question16",
               "Question17", 
               "Question18",
               "Question19", 
               "Question20",
               "Total"
                ),
       
     Score = as.character(c(input$q1,
                             input$q2,
                             input$q3,
                             input$q4,
                             input$q5,
                             input$q6,
                             input$q7,
                             input$q8,
                             input$q9,
                             input$q10,
                             input$q11,
                             input$q12,
                             input$q13,
                             input$q14,
                             input$q15,
                             input$q16,
                             input$q17,
                             input$q18,
                             input$q19,
                             input$q20,
                            as.numeric(input$q1)+as.numeric(input$q2)+as.numeric(input$q3)+as.numeric(input$q4)+
                            as.numeric(input$q5)+as.numeric(input$q6)+as.numeric(input$q7)+as.numeric(input$q8)+
                            as.numeric(input$q9)+as.numeric(input$q10)+as.numeric(input$q11)+as.numeric(input$q12)+
                            as.numeric(input$q13)+as.numeric(input$q14)+as.numeric(input$q15)+as.numeric(input$q16)+
                            as.numeric(input$q17)+as.numeric(input$q18)+as.numeric(input$q19)+as.numeric(input$q20)  
                             )), 
     stringsAsFactors=FALSE) }
    }) 
  # Show the values using an HTML table
  output$values <- renderTable({
    sliderValues()
      })
   output$evaluation <- renderText({
    if (input$submit > 0) {  
     p('The range of the score is between 20 to 140.')
    if (as.numeric(input$q1)+as.numeric(input$q2)+as.numeric(input$q3)+as.numeric(input$q4)+
          as.numeric(input$q5)+as.numeric(input$q6)+as.numeric(input$q7)+as.numeric(input$q8)+
          as.numeric(input$q9)+as.numeric(input$q10)+as.numeric(input$q11)+as.numeric(input$q12)+
          as.numeric(input$q13)+as.numeric(input$q14)+as.numeric(input$q15)+as.numeric(input$q16)+
          as.numeric(input$q17)+as.numeric(input$q18)+as.numeric(input$q19)+as.numeric(input$q20)  > 80) "Your score is higher than the population average!"
    else if (as.numeric(input$q1)+as.numeric(input$q2)+as.numeric(input$q3)+as.numeric(input$q4)+
          as.numeric(input$q5)+as.numeric(input$q6)+as.numeric(input$q7)+as.numeric(input$q8)+
          as.numeric(input$q9)+as.numeric(input$q10)+as.numeric(input$q11)+as.numeric(input$q12)+
          as.numeric(input$q13)+as.numeric(input$q14)+as.numeric(input$q15)+as.numeric(input$q16)+
          as.numeric(input$q17)+as.numeric(input$q18)+as.numeric(input$q19)+as.numeric(input$q20)  == 80) "Your score is equal to the population average!"
    else "Your score is lower than the population average!"
     }
    })
#this belongs to the function (highest level)   
})  
