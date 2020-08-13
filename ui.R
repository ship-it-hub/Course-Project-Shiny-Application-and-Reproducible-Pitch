#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # title
    titlePanel("Predictive modelling of the diamond price with log linear regression model"),
    
    # options selectors 
    sidebarLayout(
        sidebarPanel(
            helpText("This app predicts the price of a diamond"),
            h3(helpText("Try it:")),
            numericInput("car", label = h4("Carats"), step = 0.01, value = 2),
            selectInput("cut", label = h4("Cut"), 
                        choices = list("Unknown" = "*", "Fair" = "Fair", "Good" = "^Good",
                                       "Very Good" = "Very Good", "Premium" = "Premium",
                                       "Ideal" = "Ideal")),
            selectInput("col", label = h4("Color"), 
                        choices = list("Unknown" = "*", "D" = "D", "E" = "E",
                                       "F" = "F", "G" ="G",
                                       "H" = "H", "I" = "I",
                                       "J" = "J")),
            selectInput("clar", label = h4("Clarity"), 
                        choices = list("Unknown" = "*", "I1" = "I1", "SI2" = "SI2",
                                       "SI1" = "SI1", "VS2" = "VS2", "VS1" = "VS1",
                                       "VVS2" = "VVS2", "VVS1" = "VVS1", "IF" = "IF" ))
        ),
        
        # plot with diamonds and regression line
        mainPanel(
            plotOutput("distPlot"),
            h4("Predicted value:"),
            h3(textOutput("result"))
        )
    )
))
