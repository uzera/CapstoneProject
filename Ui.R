# ui.R file for the Shiny app

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Coursera Data Science Capstone Project",
                   tabPanel("Predict the Next Word",
                            br(),
                          
                            # Sidebar
                            sidebarLayout(
                              mainPanel(
                                helpText("The purpose of this application is to predict the next word of a partially entered phrase"),
                                textInput("inputString", "Enter a partial phrase here",value = ""),
                                br(),
                                br()
                              ),
                              mainPanel(
                                h5("The Predicted next word:"),
                                verbatimTextOutput("prediction"),
                                strong("You have entered:"),
                                tags$style(type='text/css', '#text1 {background-color: blue; color: yellow;}'), 
                                textOutput('text1'),
                                br(),
                                strong("Note:"),
                                tags$style(type='text/css', '#text2 {background-color: blue; color: yellow;}'),
                                textOutput('text2')
                              )
                            )
                            
                   )
                   
                   )
)
