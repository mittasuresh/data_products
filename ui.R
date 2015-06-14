library(shiny)

# Define UI for BMI app 
shinyUI(fluidPage(
        
        # Application title
        titlePanel("BMI Calculator"),
        
       
        sidebarLayout(
                sidebarPanel(
                        numericInput("ht","Enter your Height",60,min=24,max=220,step=0.5),
                        radioButtons("htUnit","Units of Height",c("Inches","cm")),
                        numericInput("wt","Enter your Weight",100,min=24,max=600,step=0.5),
                        radioButtons("wtUnit","Units of Weight",c("lbs","kgs")),
                        submitButton("Submit")
                ),
                
                # Show a tabset that includes a Application, Documentation
           
                mainPanel(
                        tabsetPanel(type = "tabs", 
                                    tabPanel("App", 
                                             h2("Here is the Output"),
                                             h4("You Entered your Height to be"),
                                             verbatimTextOutput("oht"),
                                             h4("You Entered your Weight to be"),
                                             verbatimTextOutput("owt"),
                                             h3("Your BMI (Body Mass Index) is"),
                                             verbatimTextOutput("oBMI"),
                                             h4("Your Findings"),
                                             verbatimTextOutput("advicestring"),
                                             
                                             p("Reference: https://en.wikipedia.org/wiki/Body_mass_index")), 
                                    tabPanel("Documentation", h2("Introduction:"),
                                             
                                             p("BMI Calculator is a Shiny App developed as part of the Data Products Class. This app calculates the BMI(Body Mass Index) based on a persons height and weight. BMI is widely used measure in health care community.
                                                
                                                You can access the app here:
                                                https://mittasuresh.shinyapps.io/BMI_Calculator"),
                                             
                                             
                                             
                                             h2("Instructions to use:"),
                                             
                                             p("Enter the height in (inches or cm) in the text box. Choose the units of height by selecting appropriate radio button.

Repeat the same for the weight input. Enter the numeric value int he text box, and select the lbs or Kgs radio button.

Once the values are entered, Press Submit button.

The entered values, the calculated BMI and a commentary are displayed in the main panel. "),
                                             
                                             
                                             h2("References:"),
                                             
                                             p("https://en.wikipedia.org/wiki/Body_mass_index")))
                        )
                )
        )
)