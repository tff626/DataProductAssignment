library(shiny)

# Define UI for slider demo application
shinyUI(fluidPage(
  #  App title
  titlePanel("Test your Mach score!"),
    h5("The Machiavellian score developed by Christie and Geis (1970), is psychometric test consisting of 20 statements. The test result measures
       your degree of cynicism about human nature and manipulativeness. Due to its simplicity and accuracy, it is commonly used in social science research.
       Would you like to have a try?"),
      sidebarPanel (    
      # A list of 20 questions a participant could answer
        selectInput("q1", label = h5("1. Never tell anyone the real reason you did something unless it is useful to do so."), 
                    choices = list("strongly disagree" = 1, "somewhat disagree" = 2, "slightly disagree" = 3,
                                   "no opinion" = 4, "slightly agree" = 5, "somewhat agree" = 6, "strongly agree" = 7), c(Choose='')),  
        
         selectInput("q2", label = h5("2. The best way to handle people is to tell them what they want to hear."), 
                     choices = list("strongly disagree" = 1, "somewhat disagree" = 2, "slightly disagree" = 3,
                                    "no opinion" = 4, "slightly agree" = 5, "somewhat agree" = 6, "strongly agree" = 7), c(Choose='', state.name)),
      
         selectInput("q3", label = h5("3. One should take action only when sure it is morally right."), 
                    choices = list("strongly disagree" = 7, "somewhat disagree" = 6, "slightly disagree" = 5,
                                   "no opinion" = 4, "slightly agree" = 3, "somewhat agree" = 2, "strongly agree" = 1), selected = NULL),    
        
         selectInput("q4", label = h5("4. Most people are basically good and kind."), 
                    choices = list("strongly disagree" = 7, "somewhat disagree" = 6, "slightly disagree" = 5,
                                   "no opinion" = 4, "slightly agree" = 3, "somewhat agree" = 2, "strongly agree" = 1), selected = NULL),
         
         selectInput("q5", label = h5("5. It is safest to assume that all people have a vicious streak and it will come out when they are given a chance."), 
                    choices = list("strongly disagree" = 1, "somewhat disagree" = 2, "slightly disagree" = 3,
                                   "no opinion" = 4, "slightly agree" = 5, "somewhat agree" = 6, "strongly agree" = 7), selected = NULL),
        
        selectInput("q6", label = h5("6. Honesty is the best policy in all cases."), 
                    choices = list("strongly disagree" = 7, "somewhat disagree" = 6, "slightly disagree" = 5,
                                   "no opinion" = 4, "slightly agree" = 3, "somewhat agree" = 2, "strongly agree" = 1), selected = NULL),
        
        selectInput("q7", label = h5("7. There is no excuse for lying to someone else."), 
                    choices = list("strongly disagree" = 7, "somewhat disagree" = 6, "slightly disagree" = 5,
                                   "no opinion" = 4, "slightly agree" = 3, "somewhat agree" = 2, "strongly agree" = 1), selected = NULL),  
        
        selectInput("q8", label = h5("8. Generally speaking, people will not work hard unless they are forced to do so."), 
                    choices = list("strongly disagree" = 1, "somewhat disagree" = 2, "slightly disagree" = 3,
                                   "no opinion" = 4, "slightly agree" = 5, "somewhat agree" = 6, "strongly agree" = 7), selected = NULL),
        
        selectInput("q9", label = h5("9. All in all, it is better to be humble and honest than to be important and dishonest."), 
                    choices = list("strongly disagree" = 7, "somewhat disagree" = 6, "slightly disagree" = 5,
                                   "no opinion" = 4, "slightly agree" = 3, "somewhat agree" = 2, "strongly agree" = 1), selected = NULL),    
        
        selectInput("q10", label = h5("10. When you ask someone to do something for you, it is best to give the real reasons for wanting 
                                      it rather than giving reasons which carry more weight."), 
                    choices = list("strongly disagree" = 7, "somewhat disagree" = 6, "slightly disagree" = 5,
                                   "no opinion" = 4, "slightly agree" = 3, "somewhat agree" = 2, "strongly agree" = 1), selected = NULL),
        
        selectInput("q11", label = h5("11. Most people who get ahead in the world lead clean, moral lives."), 
                    choices = list("strongly disagree" = 7, "somewhat disagree" = 6, "slightly disagree" = 5,
                                   "no opinion" = 4, "slightly agree" = 3, "somewhat agree" = 2, "strongly agree" = 1), selected = NULL),
        
        selectInput("q12", label = h5("12. Anyone who completely trusts anyone else is asking for trouble."), 
                    choices = list("strongly disagree" = 1, "somewhat disagree" = 2, "slightly disagree" = 3,
                                   "no opinion" = 4, "slightly agree" = 5, "somewhat agree" = 6, "strongly agree" = 7), selected = NULL),
        
        selectInput("q13", label = h5("13. The biggest difference between most criminals and other people is that the criminals are stupid enough to get caught."), 
                    choices = list("strongly disagree" = 1, "somewhat disagree" = 2, "slightly disagree" = 3,
                                   "no opinion" = 4, "slightly agree" = 5, "somewhat agree" = 6, "strongly agree" = 7), selected = NULL),
        
        selectInput("q14", label = h5("14. Most people are brave."), 
                    choices = list("strongly disagree" = 7, "somewhat disagree" = 6, "slightly disagree" = 5,
                                   "no opinion" = 4, "slightly agree" = 3, "somewhat agree" = 2, "strongly agree" = 1), selected = NULL),  
        
        selectInput("q15", label = h5("15. It is wise to flatter important people."), 
                    choices = list("strongly disagree" = 1, "somewhat disagree" = 2, "slightly disagree" = 3,
                                   "no opinion" = 4, "slightly agree" = 5, "somewhat agree" = 6, "strongly agree" = 7), selected = NULL),
        
        selectInput("q16", label = h5("16. It is possible to be good in all respects."), 
                    choices = list("strongly disagree" = 7, "somewhat disagree" = 6, "slightly disagree" = 5,
                                   "no opinion" = 4, "slightly agree" = 3, "somewhat agree" = 2, "strongly agree" = 1), selected = NULL),    
        
        selectInput("q17", label = h5("17. Tom was wrong when he said that there is a sucker born every minute."), 
                    choices = list("strongly disagree" = 7, "somewhat disagree" = 6, "slightly disagree" = 5,
                                   "no opinion" = 4, "slightly agree" = 3, "somewhat agree" = 2, "strongly agree" = 1), selected = NULL),
        
        selectInput("q18", label = h5("18. It is hard to get ahead without cutting corners here and there."), 
                    choices = list("strongly disagree" = 1, "somewhat disagree" = 2, "slightly disagree" = 3,
                                   "no opinion" = 4, "slightly agree" = 5, "somewhat agree" = 6, "strongly agree" = 7), selected = NULL),
        
        selectInput("q19", label = h5("19. People suffering from incurable diseases should have the choice of being put painlessly to death."), 
                    choices = list("strongly disagree" = 1, "somewhat disagree" = 2, "slightly disagree" = 3,
                                   "no opinion" = 4, "slightly agree" = 5, "somewhat agree" = 6, "strongly agree" = 7), selected = NULL),
        
        selectInput("q20", label = h5("20. Most people forget more easily the death of their parents than the loss of their property."), 
                    choices = list("strongly disagree" = 1, "somewhat disagree" = 2, "slightly disagree" = 3,
                                   "no opinion" = 4, "slightly agree" = 5, "somewhat agree" = 6, "strongly agree" = 7), selected = NULL),        
        actionButton("submit", "Submit")
      ),
    # Show a table summarizing the values entered
    mainPanel(
      textOutput('text3'),
      tableOutput("values"),
      textOutput('evaluation')
    )
  )
)