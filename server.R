library(shiny)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    dist <- switch(input$dist,
                   Normal = rnorm,
                   Exponential = rexp,
                   rnorm)
    
    hist(dist(input$obs), col = 'yellow',
         main = paste("Histogram of a" , input$dist, "Distribution with ", input$obs, " Observations"))  ##dist size, parameter from slider
  })
}
)
