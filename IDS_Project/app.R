library(shiny)
library(ggplot2)
library(plotly)
library(BayesFactor)
library(xgboost)

# Load precomputed models
load("precomputed_models.RData")

# Define UI
ui <- fluidPage(
  titlePanel("Research Question 1: Model Demonstration"),
  
  sidebarLayout(
    sidebarPanel(
      h3("Select Model"),
      radioButtons("model", "Choose a Model:", 
                   choices = c("Linear Regression", "Bayesian Regression", "XGBoost")),
      hr(),
      h4("Visualization Options"),
      checkboxInput("show_residuals", "Show Residual Plot (Linear Regression)", value = TRUE),
      checkboxInput("show_importance", "Show Feature Importance (XGBoost)", value = TRUE)
    ),
    
    mainPanel(
      h3("Model Results"),
      verbatimTextOutput("model_summary"),
      plotlyOutput("residual_plot"),
      plotlyOutput("importance_plot")
    )
  )
)

# Define Server
server <- function(input, output, session) {
  
  # Display Model Summary
  output$model_summary <- renderPrint({
    if (input$model == "Linear Regression") {
      summary(linear_model)
    } else if (input$model == "Bayesian Regression") {
      bayesian_model
    } else if (input$model == "XGBoost") {
      xgb_model
    }
  })
  
  # Residual Plot for Linear Regression
  output$residual_plot <- renderPlotly({
    req(input$model == "Linear Regression", input$show_residuals)
    residuals <- resid(linear_model)
    fitted <- fitted(linear_model)
    ggplot(data = NULL, aes(x = fitted, y = residuals)) +
      geom_point(color = "blue") +
      geom_hline(yintercept = 0, linetype = "dashed") +
      labs(title = "Residual Plot", x = "Fitted Values", y = "Residuals") +
      theme_minimal() %>%
      ggplotly()
  })
  
  # Feature Importance Plot for XGBoost
  output$importance_plot <- renderPlotly({
    req(input$model == "XGBoost", input$show_importance)
    ggplot(data = xgb_importance, aes(x = reorder(Feature, Gain), y = Gain)) +
      geom_bar(stat = "identity", fill = "orange") +
      coord_flip() +
      labs(title = "Feature Importance", x = "Features", y = "Gain") +
      theme_minimal() %>%
      ggplotly()
  })
}

# Run the app
shinyApp(ui, server)