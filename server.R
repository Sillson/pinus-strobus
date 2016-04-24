# server.R

shinyServer(function(input, output) {

     output$text1 <- renderText({ 
          paste("You have selected", input$var)
     })

     output$rangetext <- renderText({
          paste("You have selected a range between",
            input$range[1], input$range[2] )
      })
  }
)