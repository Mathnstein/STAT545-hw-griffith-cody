# This file will perform some statistical inference

library(tidyverse)
ordered_gap <- read.table(file = "gap_clean.tsv",sep='\t',header = TRUE,quote="")

#To get the best/ worst of each, since I already have them ordered by lifeexp:

gap_afr <- filter(ordered_gap,continent=="Africa")
gap_am <- filter(ordered_gap,continent=="Americas")
gap_as <- filter(ordered_gap,continent=="Asia")
gap_eu <- filter(ordered_gap,continent=="Europe")
gap_oc <- filter(ordered_gap,continent=="Oceania")

p <- gap_afr %>% 
  ggplot( aes(year, lifeExp)) +
  facet_wrap(~ country) +
  geom_point() +
  geom_smooth(se=FALSE, method="lm")+
  theme_bw()+
  theme(strip.background = element_rect(fill="orange"))+
  xlim(min(ordered_gap$year), max(ordered_gap$year))
p
ggsave("Africa_countries_lifeexp.png",p)

p <- gap_am %>% 
  ggplot( aes(year, lifeExp)) +
  facet_wrap(~ country) +
  geom_point() +
  geom_smooth(se=FALSE, method="lm")+
  theme_bw()+
  theme(strip.background = element_rect(fill="orange"))+
  xlim(1950, 2010)
p
ggsave("Americas_countries_lifeexp.png",p)

p <- gap_as %>% 
  ggplot( aes(year, lifeExp)) +
  facet_wrap(~ country) +
  geom_point() +
  geom_smooth(se=FALSE, method="lm")+
  theme_bw()+
  theme(strip.background = element_rect(fill="orange"))+
  xlim(1950, 2010)
p
ggsave("Asia_countries_lifeexp.png",p)

p <- gap_eu %>% 
  ggplot( aes(year, lifeExp)) +
  facet_wrap(~ country) +
  geom_point() +
  geom_smooth(se=FALSE, method="lm")+
  theme_bw()+
  theme(strip.background = element_rect(fill="orange"))+
  xlim(1950, 2010)
p
ggsave("Europe_countries_lifeexp.png",p)

p <- gap_oc %>% 
  ggplot( aes(year, lifeExp)) +
  facet_wrap(~ country) +
  geom_point() +
  geom_smooth(se=FALSE, method="lm")+
  theme_bw()+
  theme(strip.background = element_rect(fill="orange"))+
  xlim(1950, 2010)
p
ggsave("Oceania_countries_lifeexp.png",p)