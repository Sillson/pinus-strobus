# ui.R

source("ui_input.R")

shinyUI(fluidPage(
  titlePanel("censusVis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with 
        information from the 2010 US Census."),
      
      selectInput("var", 
        label = "Choose a variable to display",
        choices = choice_opts,
        selected = choice_opts[1]),
      
      sliderInput("range", 
        label = "Range of interest:",
        min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(
      textOutput("text1"),
      textOutput("rangetext")
    )
  )
))