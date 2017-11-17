
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shinythemes)

ui <- fluidPage(theme = shinytheme("slate"),
								
	navbarPage("Cody's Liquor Webpage!",
				tabPanel("Histogram",
						 
						 titlePanel("Distribution of alcohol content from BC Liquor stores:"),
						 
						 sidebarPanel(h3("Here is a kitten!"),
						 						 img(src = "kitten1.jpg", width = "100%", height = "50%"),
						 						 
						 						 br(),br(),
						 						 
						 						 sliderInput("SliderPriceIn", "Price range?",
						 						 						min = 0, max = 300,
						 						 						value = c(0, 300), pre = "$"
						 						 ),
						 						 
						 						 numericInput("numericBinIn" ,"Num. bins:", 20,
						 						 						 min = 1, max = 500),
						 						 
						 						 radioButtons("typeIn", "What kind of booze?",
						 						 						 choices = c("BEER", "SPIRITS", "WINE"),
						 						 						 selected = "SPIRITS"),
						 						 
						 						 actionButton("go", "Generate Plot")
						 ),
						 
						 mainPanel(plotOutput("Hist_Alc_Content"))
				),
						 
				tabPanel("Cheap or Expensive",
							
							titlePanel("Tables of cheap and expensive drinks from BC Liquor stores:"),
	
							sidebarPanel(h3("A different kitten!"),
							 		img(src = "kitten2.jpg", width = "100%", height = "50%"),
							 
							 		br(),br(),
							 
								 	sliderInput("SliderPriceIn2", "Price range?",
							 						min = 0, max = 300,
							 						value = c(0, 300), pre = "$"
							 						),
							 
									radioButtons("typeIn2", "What kind of booze?",
							 						 choices = c("BEER", "SPIRITS", "WINE"),
							 						 selected = "SPIRITS"),
							 
							 		actionButton("go2", "Generate Tables")
							 ),
	
						mainPanel(h2("The cheapest drinks:"),
						
								tableOutput("table_head"),
	
								h2("The expensive drinks:"),
			
								tableOutput("table_tail")
			 			)
				),
	
				tabPanel("Pick for me",
							 titlePanel("Pick randomly from BC Liquor stores:"),
							 
							 sidebarPanel(h3("One more for good measure!"),
							 						 img(src = "kitten3.jpg", width = "100%", height = "50%"),
							 						 
							 						 br(),br(),
							 						 
							 						 sliderInput("SliderPriceIn3", "Price range?",
							 						 						min = 0, max = 300,
							 						 						value = c(0, 300), pre = "$"
							 						 ),
							 						 
							 						 radioButtons("typeIn3", "What kind of booze?",
							 						 						 choices = c("BEER", "SPIRITS", "WINE"),
							 						 						 selected = "SPIRITS"),
							 						 
							 						 actionButton("go3", "Random Pick")
							 ),
							 
							mainPanel(h2("Tonight you should drink:"),
												
												tableOutput("table_rand"))
				)
	)
)
