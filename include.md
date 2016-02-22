# developing-data-products-shiny
Coursera Developing Data Products course project

This application (Economic Data Visualzier) is developed as part of the course project for 'Developing Data Products' course from John Hopkins University on Coursera.

This Shiny application pulls the Econonomic Data from [FRED2] (http://research.stlouisfed.org/fred2/) database  and displays it in a chart.

Economic Data Visualzier relies heavily on two functions from the quantmod package:

    It usesgetSymbols to download economic data straight into R from  Federal Reserve Bank of St. Louis.
    It uses chartSeries to display prices in an attractive chart.

Economic Data Visualzier also relies on an R script named helpers.R, which contains a function that converts the data suitable for rendering in table format.

The [FRED2] (http://research.stlouisfed.org/fred2/) database provides thousands of economic datasets. This application uses only the top 10 economic datasets like Inflation, GDP, UnEmployment Rate, Debt etc. One can easily extend this to extract more data.

Source code is available on the [GitHub](https://github.com/saddagarla/developing-data-products-shiny).


You can adjust date range and the dataset using control panel located on the left side. Dataset can be downloaded using data tab.
