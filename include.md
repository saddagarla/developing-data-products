# developing-data-products-shiny
Coursera Developing Data Products course project

This application (Economic Data Visualzier) is developed as part of the course project for 'Developing Data Products' course from John Hopkins University on Coursera.

This Shiny application pulls the Econonomic Data from [FRED2] (http://research.stlouisfed.org/fred2/) database  and displays it in a chart.

Economic Data Visualzier relies heavily on two functions from the quantmod package:

    It usesgetSymbols to download economic data straight into R from  Federal Reserve Bank of St. Louis.
    It uses chartSeries to display prices in an attractive chart.

Economic Data Visualzier also relies on an R script named helpers.R, which contains a function that converts the data suitable for rendering in table format.

The [FRED2] (http://research.stlouisfed.org/fred2/) database provides thousands of economic datasets. This application allows the user to select the following top 10 Economic Datasets. 

Inflation, GDP, Federal Debt, UnEmployement Payrolls, Household Income, Rate, 10 Year Interest Rates, WTI Crude, SP500, 30-year Mortgage Rate.

One can easily extend this application to display more datasets.

Source code is available on the [GitHub](http://bit.ly/1Qcz9f7).


You can adjust date range and the dataset using control panel located on the left side. Dataset can be downloaded using data tab.

You can also set the log scale of the data using a checkbox.
