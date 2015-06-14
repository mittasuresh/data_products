
library(shiny)
bmiCalc=function (ht,wt,htu,wtu) {
        if (htu=="cm"){
                htm=ht/100} else{
                        htm=ht*2.54/100}

        if (wtu=="lbs") {
        wtk=wt/2.2
        } else{
        wtk=wt
        }
        round(wtk/(htm^2),1)
        }

bmiResult= function (BMI) {
        if (BMI< 18.5) {
                "You are Under Weight, you need to eat more and put on some weight. You are at Risk of developing problems such as nutiritional deficiency and Osteoporosis"
        } else if (BMI>=18.5 & BMI<25){
                "Your BMI is in Normal Range. Keep the it up!"
        } else if (BMI>=25 & BMI<30){
                "You are Overweight. Reduce your weight and Change diet or lifestyle. You are at Moderate risk of developing heart disease, high blood pressure, stroke and diabetes."
        } else {
                "You are Obese. Get help in Reducing your weight and changes to  lifestyle. You are at HIGH risk of developing heart disease, high blood pressure, stroke and diabetes."}
}


shinyServer(
        function(input,output) {
                output$oht= renderPrint({paste(input$ht,input$htUnit)}) 
                output$owt= renderPrint({paste(input$wt,input$wtUnit)})
                output$oBMI = renderPrint({ bmiCalc(input$ht,input$wt,input$htUnit,input$wtUnit)})
                output$advicestring=renderPrint({
                  bmiResult(bmiCalc(input$ht,input$wt,input$htUnit,input$wtUnit))                       
        }
        )
        })