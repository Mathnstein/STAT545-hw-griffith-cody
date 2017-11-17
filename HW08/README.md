# Homework 08

This assignment is a bit different, I have built a shiny app hosted here: [Mathnstein](https://mathnstein.shinyapps.io/first_shiny/).
This app will take the BC Liquor store data set, found [here](https://github.com/STAT545-UBC/STAT545-UBC.github.io/blob/master/shiny_supp/2016/bcl-data.csv) or
[Raw csv](https://raw.githubusercontent.com/STAT545-UBC/STAT545-UBC.github.io/master/shiny_supp/2016/bcl-data.csv), and do some simple
data analysis on it.

* The first tab will take input as a slider with min and max prices, number of bins, and type of alcohol to return a histogram of alcohol
content.
* The second tab will take the same input as before, minus the number of bins, and returns the head and tail of the filtered data set.
* The third tab will take the same input at tab 2 and will choose a random drink from the filtered data set to try.

The R code that generates this app:

* [Ui](https://github.com/Mathnstein/STAT545-hw-griffith-cody/blob/master/HW08/First_Shiny/ui.R)
* [Server](https://github.com/Mathnstein/STAT545-hw-griffith-cody/blob/master/HW08/First_Shiny/server.R)
