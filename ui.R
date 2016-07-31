library(markdown)

shinyUI(
        navbarPage("Heart Attack Risk Assessment",
                   tabPanel("Calculator",
                   sidebarLayout(     
                        sidebarPanel(
                                helpText("The risk assessment tool below uses information from the Framingham Heart Study to predict a person's chance of having a heart attack in the next 10 years. This tool is designed for adults aged 20 and older who do not have heart disease or diabetes. To find your risk score, enter your information in the calculator below."),
                                numericInput('age','Age (in years)',20,min=20,max=80),
                                checkboxGroupInput('gender','Gender',c("Male"="Male","Female"="Female"), selected = "Male"),
                                numericInput('cholesterol','Total Cholesterol (mg/dl)',200,min=0,max=400),
                                numericInput('hdl','HDL Cholesterol (mg/dl)',60,min=0,max=200),
                                checkboxGroupInput('smoker','Smoker',c("No"="No","Yes"="Yes"), selected = "No"),
                                numericInput('systolic','Systolic Blood Pressure (mm/Hg)',100,min=0,max=200),
                                checkboxGroupInput('treated','Are you on any medication to treat high blood pressure?',c("No"="No","Yes"="Yes"), selected = "No"),
                                submitButton('Calculate Your 10-Year Risk')
                        ),
                        mainPanel(
                                h3('Information about your risk score:'),
                                h4('Age'),
                                verbatimTextOutput("inputAge"),
                                h4('Gender'),
                                verbatimTextOutput("inputGender"),
                                h4('Total Cholesterol'),
                                verbatimTextOutput("inputCholesterol"),
                                h4('HDL Cholesterol'),
                                verbatimTextOutput("inputHDL"),
                                h4('Smoker'),
                                verbatimTextOutput("inputSmoker"),
                                h4('Systolic Blood Pressure'),
                                verbatimTextOutput("inputSystolic"),
                                h4('On Medication for HBP'),
                                verbatimTextOutput("inputTreated"),
                                h4('Risk Score'),
                                verbatimTextOutput("prediction")
                        )
                )
                ),
        tabPanel("About",
                 mainPanel(includeMarkdown("about.Rmd")
                )
        )
        )
)