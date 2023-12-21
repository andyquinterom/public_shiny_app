library(shiny)

ui <- fluidPage(
  sliderInput("slider", "Slider", min = 1, max = 100, value = 50),
  plotOutput("plot")
)

server <- function(input, output, session) {
  output$plot <- renderPlot({
    plot(1:input$slider)
  })
}

shinyApp(ui, server)
