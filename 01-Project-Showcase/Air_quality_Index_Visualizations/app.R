# #
# # This is a Shiny web application. You can run the application by clicking
# # the 'Run App' button above.
# #
# # Find out more about building applications with Shiny here:
# #
# #    https://shiny.posit.co/
# #
# 
# library(shiny)
# 
# # Define UI for application that draws a histogram
# ui <- fluidPage(
# 
#     # Application title
#     titlePanel("Air Quality Index New York City - Data Visualization "),
# 
#     # Sidebar with a slider input for number of bins 
#     sidebarLayout(
#         sidebarPanel(
#             sliderInput("bins",
#                         "Number of bins:",
#                         min = 1,
#                         max = 50,
#                         value = 30)
#         ),
# 
#         # Show a plot of the generated distribution
#         mainPanel(
#            plotOutput("distPlot")
#         )
#     )
# )
# 
# # Define server logic required to draw a histogram
# server <- function(input, output) {
# 
#     output$distPlot <- renderPlot({
#         # generate bins based on input$bins from ui.R
#         x    <- faithful[, 2]
#         bins <- seq(min(x), max(x), length.out = input$bins + 1)
# 
#         # draw the histogram with the specified number of bins
#         hist(x, breaks = bins, col = 'darkgray', border = 'white',
#              xlab = 'Waiting time to next eruption (in mins)',
#              main = 'Histogram of waiting times')
#     })
# }
# 
# # Run the application
# shinyApp(ui = ui, server = server)
# 







library(shiny)
library(ggplot2)

# Unique values for the dropdown
unique_names <- c(
  "Ozone (O3)", "Nitrogen dioxide (NO2)")

# Define UI
ui <- fluidPage(
  titlePanel("Air Quality Index"),
  h1("Data Visualization project", style = "color: lightgrey; font-size: 15px; text-align: right;"),
  sidebarLayout(
    sidebarPanel(
      selectInput("name_input", "Choose a Name:", choices = unique_names, selected = unique_names[1])
    ),
    mainPanel(
      plotOutput("scatterPlot")
    )
  )
)



# Define Server
server <- function(input, output) {
  output$scatterPlot <- renderPlot({
    # Filter data based on drop-down selection
    filtered_data <- subset(response, name == input$name_input)
    
    # Create scatterplot
    ggplot(filtered_data, aes(x = data_value, y = time_period)) +
      geom_point(color = "blue", size = 2) +
      
      labs(title = paste("Scatterplot for", input$name_input),
           x = "Data Value", 
           y = "Time Period") +
      theme_minimal()
  })
}



# Run the application
shinyApp(ui = ui, server = server)
