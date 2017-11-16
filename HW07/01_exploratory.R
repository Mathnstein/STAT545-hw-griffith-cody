#This file will read the downloaded data from 00_downloader.R
# Create some plots and reorder the data

library(tidyverse)

gapminder <- read.table(file = "gapminder.tsv",sep='\t',header = TRUE,quote="")

gap_df <- as.data.frame(gapminder)
str(gap_df) #makes sure the data is a df

#Here I have given two seperate plots that tell similar stories yet have a slight different conclusion.

#The first is a scatterplot by year where the colors per continent. Over this we have a simple linear regression
#analysis that essentially predicts all continents to have a higher life expectancy the more recent the year.
#But we can see that Asia has the steepest curve and perhaps Oceania and Africa tied with one another for slowest increase.


p1 <- ggplot(gap_df, aes(year, lifeExp,
                      colour=continent)) +
  geom_point() +
  geom_smooth(method="lm", se=FALSE)
ggsave("scatterplot_analysis_lifeexp_vs_year.png", p1)

p2 <- gap_df %>% ggplot(aes(year,log(pop)))+
  geom_point(color="orange")
ggsave("Scatterplot_totalpop_vs_year.png",p2)

#Order the data

gap_ordered <- arrange(gap_df,gdpPercap) %>% 
  arrange(continent)


write.table(gap_ordered, "gap_clean.tsv", quote = FALSE,
            sep = "\t", row.names = FALSE)
