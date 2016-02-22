# server.R

library(quantmod)
source("helpers.R")


shinyServer(function(input, output) {

  
    # Download the data from FRED2 database
    dataInput <- reactive({
      getSymbols(slist[as.numeric(input$select)], src = "FRED",
                 auto.assign = FALSE)
    })
    
    finalInput <- reactive({
      convert(dataInput(), snames[as.numeric(input$select)])
    })

    # Render Plot
    output$plot <- renderPlot({
      chartSeries(dataInput(), theme = chartTheme("black"),
                  name = snames[as.numeric(input$select)],
                  show.grid = TRUE, 
                  subset=paste0(as.character(input$dates[1]), "::", as.character(input$dates[2])),
                  type = "line", log.scale = input$log, TA = NULL)
    })
    
    
    # Render Data table 
    output$table <- renderDataTable({finalInput()}, options = list(lengthMenu=c(15,30,50),pageLength=15))
    
    output$downloadData <- downloadHandler(
      filename = function() {
        paste(slist[as.numeric(input$select)], "csv", sep = ".")
      },
      content = function(file) {
        write.table(finalInput(), file, sep=',', row.names=FALSE)
      }
    )

})
