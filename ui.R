library(shiny)

shinyUI(navbarPage("Economic Data Visualizer",
  tabPanel("Plot",
    sidebarPanel(
      helpText("Select an Economic Data to display.
        Information will be collected from Federal Reserve Bank of St. Louis."),
      
      selectInput("select", label = h3("Select Data"), 
                  choices = list("Inflation" = 1, "UnEmployment" = 2, 
                    "GDP" = 3, "10Y Treasury IR" = 4,
                  "Fed Debt" = 5, "Household Income" = 6,
                  "Payrolls" = 7, "WTI Crude" = 8,
                  "SP500" = 9, "30Y Mortgage Rate" = 10),
                  selected = 1),

      dateRangeInput("dates",
        "Date range",
        start = "2000-01-01",
        end = as.character(Sys.Date())),

      br(),
      br(),

      checkboxInput("log", "Plot y axis on log scale",
        value = FALSE)

    ),

  mainPanel(
      tabsetPanel(
        tabPanel("Plot", plotOutput("plot")), 
        tabPanel("Data", dataTableOutput("table") ,
                 downloadButton('downloadData', 'Download'))
      )
    )
  ),

  tabPanel("About", mainPanel(includeMarkdown("include.md")
  ))
  
))
