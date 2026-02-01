
#
#    https://shiny.posit.co/
#
# total number of crimes 
# different UI 


library(shiny)
library(dplyr)
library(leaflet)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  tags$head(
    tags$style(HTML("
      body {
        background-color: #000E54;
        font-family: Arial, sans-serif;
      }
      h1{
        color: #f57449; 
        font-family: ShermanSerif, Georgia, serif;
      }
      h2{
        font-size : 35px;
      }
      h3{
        color: #ffffff; 
        font-size : 35px;
      }
      h4{
        color: 	#FFFFFF; 
      }
      h5{
        color: 	#FFFFFF; 
        font-size : 18px;
      }
      h6{
        color: #000000; 
        font-size : 18px;
      }
      .sidebarPanel {
        background-color: #b9b0bf; 
        padding: 20px;
      }
      .mainPanel {
        background-color: #b9b0bf; 
        border-radius: 10px;
        padding: 20px;
    }
    .app-footer {
    text-align: center;
    margin-top: 40px;
    padding: 15px 0;
    background-color: #d7dadb; 
    border-top: 1px solid #ccc;
    }"))
  ),

    # Application title
    h1("Syracuse City - Crime Data Visualization"),
  br(),
    h4("The Syracuse Crime Data Visualization project is a Shiny web application designed to analyze and visualize
       crime data in Syracuse. It allows users to select specific crime types and date ranges, providing insights into 
       crime occurrences over time. The application displays key metrics such as the total number of crimes, crime type, 
       and the daily crime rate. Additionally, it features interactive maps and visualizations to help users better understand 
       crime trends and patterns in the selected time frame. This project aims to enhance public awareness and decision-making by 
       providing an accessible and engaging interface for crime data analysis."),
  br(),
  hr(),
  

    sidebarLayout(
        sidebarPanel(
          h6("Input Panel"),
            selectInput("crimeType", "Select Crime Types", choices=unique(data$CODE_DEFINED), selected="BURGLARY", multiple = TRUE),
            dateRangeInput("dateRange", "Select Date Range",start = min(data$DATEEND), end = today())
),

        # Show a plot of the generated distribution
        mainPanel(
           conditionalPanel("input.showMap == true"),
           h3("Crime Scatter Map"),
           leafletOutput("map"),
           h5("The above scatter map displays the spots of the incidents"),
           br(),
           hr(),
           h3("Crime occurrence bar chart"),
           br(),
           plotOutput("crimePlot"),
           br(),
           h5("The above Bar plot explains the number of crime counts for each day from the above time selected from the input panel, Try selecting multiple types of crimes for comparison between crime counts for different types of crime occurred in Syracuse City")
          
        )
    ),

  
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  filteredData <- reactive({
    data %>% filter(CODE_DEFINED == input$crimeType & DATEEND >= input$dateRange[1] & DATEEND <= input$dateRange[2])
  })


    
    output$map <- renderLeaflet({leaflet(data=filteredData()) %>% addTiles() %>% addCircleMarkers( ~LONG, ~LAT, 
                                                                                                  radius = 2, 
                                                                                                  color = "purple",
                                                                                                  stroke = FALSE, fillOpacity = 0.6)})
                                                                                          

                                                                                                  
    output$crimeSummary <- renderUI({
      total_crime <-nrow(filteredData())
      num_of_days <- as.numeric(difftime(input$dateRange[2], input$dateRange[1], units = "days")) + 1
      crime_rate <- round(total_crime/num_of_days,2)})
      
                                                                                                 
    
    output$crimePlot <- renderPlot({
      # create bar chart for the date range selected 
      ggplot(filteredData(), aes(x = DATEEND, fill=CODE_DEFINED)) + geom_bar() + theme_minimal() + 
        labs(x = "Date of crime occurrence" , y = "Crime count") 
    })
    
    
    output$SumCrime <- renderText({

      sum_of_crime <- length(filteredData()$CODE_DEFINED)
      num_of_days <- as.numeric(difftime(input$dateRange[2], input$dateRange[1], unit = "days")) + 1

      crime_rate = round(sum_of_crime/num_of_days)
      
      message <- sum_of_crime 
# 
#       if (crime_rate > 7) {
#         message <- paste("For the time frame provided from ", input$dateRange[1], "
#                          to ", input$dateRange[2], "is considered high crime rate. Crime rate is :", crime_rate, "per day.")
#       } else {
#         message <- paste("For the time frame provided from ", input$dateRange[1], "
#                          to ", input$dateRange[2]," Nothing to worry much about the crime, the crime rate is low, Crime rate is :", crime_rate, "per day.")
#       }
#       message
    })
}


# Run the application 
shinyApp(ui = ui, server = server)
