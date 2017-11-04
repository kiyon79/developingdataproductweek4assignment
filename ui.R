library(shiny)

shinyUI(fluidPage(
  # Application title
  titlePanel("How normal and exponential distribution change as the number changes?"),
  # Sidebar with a slider input for type of distributionT and slider input.
  
  sidebarLayout(
    sidebarPanel(
      fluidRow(column(12,
                      sliderInput("obs",
                                  "Number of Observations:",
                                  min = 5,
                                  max = 50000,
                                  value = 20))),
      fluidRow(column(12,
                      radioButtons("dist", "Distribution type:",
                                   c("Normal" = "Normal",
                                     "Exponential" = "Exponential"))))),
    # Show a plot of the generated distribution
    
    mainPanel(plotOutput("distPlot"))
  )	 
)
)
