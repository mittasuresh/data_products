

library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("BMI Calculator"),
        sidebarPanel(
                numericInput("ht","Enter your Height",60,min=24,max=220,step=0.5),
                radioButtons("htUnit","Units of Height",c("Inches","cm")),
                numericInput("wt","Enter your Weight",100,min=24,max=600,step=0.5),
                radioButtons("wtUnit","Units of Weight",c("lbs","kgs")),
                submitButton("Submit")
                ),
        mainPanel(
                h2("Here is the Output"),
                h4("You Entered your Height to be"),
                verbatimTextOutput("oht"),
                h4("You Entered your Weight to be"),
                verbatimTextOutput("owt"),
                h3("Your BMI (Body Mass Index) is"),
                verbatimTextOutput("oBMI"),
                h4("Your Findings"),
                verbatimTextOutput("advicestring"),
                
                p("Reference: https://en.wikipedia.org/wiki/Body_mass_index"),
                
                
                p("Documentation can be found here: https://github.com/mittasuresh/data_products/blob/master/Documentation.Rmd")
                )
        
        ))