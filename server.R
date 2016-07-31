HeartAttackRisk <- function(age, gender, cholesterol, hdl, smoker, systolic, treated) {
        
        points <- 0    
        agePoints <- 0
        smokerPoints <- 0
        cholesterolPoints <- 0
        HDLPoints <- 0
        systolicPoints <- 0
        
        results <- "Please enter all information"
        
        if(gender == "Female"){
                if(age < 35) agePoints <- -7
                else if(age < 40) agePoints <- -3
                else if(age < 45) agePoints <- 0
                else if(age < 50) agePoints <- 3
                else if(age < 55) agePoints <- 6
                else if(age < 60) agePoints <- 8
                else if(age < 65) agePoints <- 10
                else if(age < 70) agePoints <- 12
                else if(age < 75) agePoints <- 14
                else agePoints <- 16
                
                if(smoker == "Yes"){
                        if(age < 40) smokerPoints <- 9
                        else if(age < 50) smokerPoints <- 7
                        else if(age < 60) smokerPoints <- 4
                        else if(age < 70) smokerPoints <- 2
                        else smokerPoints <- 1     
                }
                
                if(cholesterol < 160) cholesterolPoints <- 0
                else if(cholesterol < 200){
                        if(age < 40) cholesterolPoints <- 4
                        else if(age < 50) cholesterolPoints <- 3
                        else if(age < 60) cholesterolPoints <- 2
                        else if(age < 70) cholesterolPoints <- 1
                        else if(age < 80) cholesterolPoints <- 1
                }
                else if(cholesterol < 240){
                        if(age < 40) cholesterolPoints <- 8
                        else if(age < 50) cholesterolPoints <- 6
                        else if(age < 60) cholesterolPoints <- 4
                        else if(age < 70) cholesterolPoints <- 2
                        else if(age < 80) cholesterolPoints <- 1
                }
                else if(cholesterol < 280){
                        if(age < 40) cholesterolPoints <- 11
                        else if(age < 50) cholesterolPoints <- 8
                        else if(age < 60) cholesterolPoints <- 5
                        else if(age < 70) cholesterolPoints <- 3
                        else if(age < 80) cholesterolPoints <- 2
                }
                else if(cholesterol >= 280){
                        if(age < 40) cholesterolPoints <- 13
                        else if(age < 50) cholesterolPoints <- 10
                        else if(age < 60) cholesterolPoints <- 7
                        else if(age < 70) cholesterolPoints <- 4
                        else if(age < 80) cholesterolPoints <- 2
                }
                
                if(hdl < 40) HDLPoints <- 2
                else if(hdl < 50) HDLPoints <- 1
                else if(hdl < 60) HDLPoints <- 0
                else HDLPoints <- -1
                
                if(systolic < 120) systolicPoints <- 0
                else if(systolic < 130){
                        if(treated == "Yes") systolicPoints <- 3
                        else systolicPoints <- 1
                }
                else if(systolic < 140){
                        if(treated == "Yes") systolicPoints <- 4
                        else systolicPoints <- 2
                }
                else if(systolic < 160){
                        if(treated == "Yes") systolicPoints <- 5
                        else systolicPoints <- 3
                }
                else{
                        if(treated == "Yes") systolicPoints <- 6
                        else systolicPoints <- 4
                }
                
                Points <- agePoints + smokerPoints + cholesterolPoints + HDLPoints + systolicPoints
                
                if(Points < 9) results <- "Risk of heart attack is less than 1%"
                else if(Points < 13) results <- "Risk of heart attack is 1%"
                else if(Points < 15) results <- "Risk of heart attack is 2%"
                else if(Points == 15) results <- "Risk of heart attack is 3%"
                else if(Points == 16) results <- "Risk of heart attack is 4%"
                else if(Points == 17) results <- "Risk of heart attack is 5%"
                else if(Points == 18) results <- "Risk of heart attack is 6%"
                else if(Points == 19) results <- "Risk of heart attack is 8%"
                else if(Points == 20) results <- "Risk of heart attack is 11%"
                else if(Points == 21) results <- "Risk of heart attack is 14%"
                else if(Points == 22) results <- "Risk of heart attack is 17%"
                else if(Points == 23) results <- "Risk of heart attack is 22%"
                else if(Points == 24) results <- "Risk of heart attack is 27%"
                else results <- "Risk of heart attack is greater than 30%"
        }
        else if(gender == "Male"){
                if(age < 35) agePoints <- -9
                else if(age < 40) agePoints <- -4
                else if(age < 45) agePoints <- 0
                else if(age < 50) agePoints <- 3
                else if(age < 55) agePoints <- 6
                else if(age < 60) agePoints <- 8
                else if(age < 65) agePoints <- 10
                else if(age < 70) agePoints <- 11
                else if(age < 75) agePoints <- 12
                else agePoints <- 13
                
                if(smoker == "Yes"){
                        if(age < 40) smokerPoints <- 8
                        else if(age < 50) smokerPoints <- 5
                        else if(age < 60) smokerPoints <- 3
                        else if(age < 70) smokerPoints <- 1
                        else smokerPoints <- 1
                }
                
                if(cholesterol < 160) cholesterolPoints <- 0
                else if(cholesterol < 200){
                        if(age < 40) cholesterolPoints <- 4
                        else if(age < 50) cholesterolPoints <- 3
                        else if(age < 60) cholesterolPoints <- 2
                        else if(age < 70) cholesterolPoints <- 1
                        else if(age < 80) cholesterolPoints <- 0
                }
                else if(cholesterol < 240){
                        if(age < 40) cholesterolPoints <- 7
                        else if(age < 50) cholesterolPoints <- 5
                        else if(age < 60) cholesterolPoints <- 3
                        else if(age < 70) cholesterolPoints <- 1
                        else if(age < 80) cholesterolPoints <- 0
                }
                else if(cholesterol < 280){
                        if(age < 40) cholesterolPoints <- 9
                        else if(age < 50) cholesterolPoints <- 6
                        else if(age < 60) cholesterolPoints <- 4
                        else if(age < 70) cholesterolPoints <- 2
                        else if(age < 80) cholesterolPoints <- 1
                }
                else if(cholesterol >= 280){
                        if(age < 40) cholesterolPoints <- 11
                        else if(age < 50) cholesterolPoints <- 8
                        else if(age < 60) cholesterolPoints <- 5
                        else if(age < 70) cholesterolPoints <- 3
                        else if(age < 80) cholesterolPoints <- 1
                }
                
                if(hdl < 40) HDLPoints <- 2
                else if(hdl < 50) HDLPoints <- 1
                else if(hdl < 60) HDLPoints <- 0
                else HDLPoints <- -1
                
                if(systolic < 120) systolicPoints <- 0
                else if(systolic < 130){
                        if(treated == "Yes") systolicPoints <- 1
                        else systolicPoints <- 0
                }
                else if(systolic < 140){
                        if(treated == "Yes") systolicPoints <- 2
                        else systolicPoints <- 1
                }
                else if(systolic < 160){
                        if(treated == "Yes") systolicPoints <- 2
                        else systolicPoints <- 1
                }
                else{
                        if(treated == "Yes") systolicPoints <- 3
                        else systolicPoints <- 2
                }
                
                Points <- agePoints + smokerPoints + cholesterolPoints + HDLPoints + systolicPoints
                
                if(Points == 0) results <- "Risk of heart attack is less than 1%"
                else if(Points < 5) results <- "Risk of heart attack is 1%"
                else if(Points < 7) results <- "Risk of heart attack is 2%"
                else if(Points == 7) results <- "Risk of heart attack is 3%"
                else if(Points == 8) results <- "Risk of heart attack is 4%"
                else if(Points == 9) results <- "Risk of heart attack is 5%"
                else if(Points == 10) results <- "Risk of heart attack is 6%"
                else if(Points == 11) results <- "Risk of heart attack is 8%"
                else if(Points == 12) results <- "Risk of heart attack is 10%"
                else if(Points == 13) results <- "Risk of heart attack is 12%"
                else if(Points == 14) results <- "Risk of heart attack is 16%"
                else if(Points == 15) results <- "Risk of heart attack is 20%"
                else if(Points == 16) results <- "Risk of heart attack is 25%"
                else results <- "Risk of heart attack is greater than 30%"
        }
        
        results
}

shinyServer(
        function(input, output){
                output$inputAge <- renderPrint({input$age})
                output$inputGender <- renderPrint({input$gender})
                output$inputCholesterol <- renderPrint({input$cholesterol})
                output$inputHDL <- renderPrint({input$hdl})
                output$inputSmoker <- renderPrint({input$smoker})
                output$inputSystolic <- renderPrint({input$systolic})
                output$inputTreated <- renderPrint({input$treated})
                output$prediction <- renderPrint({HeartAttackRisk(input$age, input$gender, input$cholesterol, input$hdl, input$smoker, input$systolic, input$treated)})
        }
)