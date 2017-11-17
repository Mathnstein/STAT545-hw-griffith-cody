library(shiny)
library(tidyverse)

server <- function(input, output) {
	bcl_data <- read.csv("Data/bcl-data.csv")
	
	#Start by running through the statistics with default values
	v <- reactiveValues(doPlot = TRUE)
	
	#Observe if button was pressed
	observeEvent(input$go, {
		# 0 - Button has not been pressed
		# 1 - Button has been pressed
		v$doPlot <- input$go
	})
	
	#Create a plot
	output$Hist_Alc_Content <- renderPlot({
		if (v$doPlot == FALSE) return()
		
		isolate({
		bcl_data %>%
			filter(Price >= input$SliderPriceIn[1],
						 Price <= input$SliderPriceIn[2],
						 Type == input$typeIn) %>% 
			ggplot()+
			aes(x = Alcohol_Content)+
			geom_histogram(bins = input$numericBinIn,
										 color = "black", fill = "orange")+
				theme_bw()+
			labs(title = "Distribution of Alcohol content",
					 x = "Alcohol Content", y = "Number of drinks")
			})
	})
	
	u <- reactiveValues(doTable = TRUE)
	
	#Observe if button was pressed
	observeEvent(input$go2, {
		# 0 - Button has not been pressed
		# 1 - Button has been pressed
		u$doTable <- input$go2
	})
	
	output$table_head <- renderTable({
		if (u$doTable == FALSE) return()
		
		isolate({
		bcl_data %>%
			filter(Price >= input$SliderPriceIn2[1],
						 Price <= input$SliderPriceIn2[2],
						 Type == input$typeIn2) %>%
			arrange(Price) %>% 
			head()
		})
	})
	
	output$table_tail <- renderTable({
		if (u$doTable == FALSE) return()
		
		isolate({
			bcl_data %>%
				filter(Price >= input$SliderPriceIn2[1],
							 Price <= input$SliderPriceIn2[2],
							 Type == input$typeIn2) %>%
				arrange(Price) %>% 
				tail()
		})
	})
	
	w <- reactiveValues(doRand = TRUE)
	
	#Observe if button was pressed
	observeEvent(input$go3, {
		# 0 - Button has not been pressed
		# 1 - Button has been pressed
		w$doRand <- input$go3
	})
	
	output$table_rand <- renderTable({
		if (w$doRand == FALSE) return()
		
		isolate({
			sample_n( bcl_data %>%
									filter(Price >= input$SliderPriceIn3[1],
												 Price <= input$SliderPriceIn3[2],
												 Type == input$typeIn3) %>%
									arrange(Price)
								,1)
				
		})
	})
	
}
