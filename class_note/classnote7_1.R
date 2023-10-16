# EDA
# Data visualization 데이터 시각화
# ggplot2 

# move to the practice directory

rm(list = ls())
library("tidyverse")

fertility <- readxl::read_xlsx("fertility.xlsx")

# gather() : spread()
# pivot_longer() : pivor_wider()


fer.tidy <- fertility %>% 
  gather(year, fer, -region) %>% 
  arrange(region, year) 

## GGPLOT2 with "gapminder"
## gapminder is a dataset
## commonly used in R

# install.packages("gapminder")로 설치
library("gapminder")
data("gapminder")

str(gapminder)

# 6 variables
# country, continent
# year
# lifeExp, pop, gdppercapita
# cross-country panel(longitudinal) data

# 1. tidy data 
# 2. mapping 
#     aes: aesthetics 

# gdp per capita: living standard 삶의 수준
gapminder %>%  
  ggplot(mapping = aes(x = gdpPercap, 
                       y = lifeExp)) +
  geom_point() +
  geom_smooth(method = "lm") # lm:linear model

gapminder %>%  
  ggplot(mapping = aes(x = gdpPercap, 
                       y = lifeExp)) +
  geom_point() +
  geom_smooth(method = "lm") + # lm:linear model
  scale_x_log10()

gapminder %>%  
  ggplot(mapping = aes(x = gdpPercap, 
                       y = lifeExp)) +
  geom_point(color = "purple") +
  geom_smooth(method = "lm") + # lm:linear model
  scale_x_log10()

# transparency 투명도
gapminder %>%  
  ggplot(mapping = aes(x = gdpPercap, 
                       y = lifeExp)) +
  geom_point(color = "purple", alpha = 0.2) +
  geom_smooth(method = "lm") + # lm:linear model
  scale_x_log10()

library("scales")

gapminder %>%  
  ggplot(mapping = aes(x = gdpPercap, 
                       y = lifeExp)) +
  geom_point(mapping = aes(color=continent),
             alpha = 0.2) +
  geom_smooth(method = "lm") + # lm:linear model
  scale_x_log10(labels=scales::dollar)



# 대륙별로 추세선을 그린다. 

gapminder %>% 
  ggplot(mapping = aes(x     = gdpPercap,
                       y     = lifeExp,
                       color = continent)) +
  geom_point(alpha = 0.2) +
  geom_smooth(method = "lm") +
  scale_x_log10(labels=scales::dollar)

# shift + alt + down
gapminder %>% 
  ggplot(mapping = aes(x     = gdpPercap,
                       y     = lifeExp,
                       color = continent)) +
  geom_point(alpha = 0.2) +
  geom_smooth(method = "lm") +
  scale_x_log10(labels=scales::dollar) +
  facet_wrap(~continent) +
  theme(legend.position = "none")

# population & GDP per capita
# by continent 
# for year == 1952

gapminder %>% 
  filter(year == 1952) %>% 
  ggplot(mapping = aes(x     = pop,
                       y     = gdpPercap,
                       color = continent)) +
  geom_point(alpha = 0.2) +
  geom_smooth(method = "lm") +
  scale_x_log10() +
  facet_wrap(~continent) +
  theme(legend.position = "none")

## new data
## total fertility rate (합계출산율) &
## labor force particiation (경제활동참가)

tfr <- readxl::read_excel("tfr_lfp.xlsx")
head(tfr)

# lfp -> fertility (-)

# 두변수의 관계를 그려보시오.
# 산포도를 그리고, 선형 추세선을 그려보시오.

tfr %>% 
  ggplot(mapping = aes(x = lfp, y = tfr)) +
  geom_point() +
  geom_smooth(method = "lm")

# draw the graphs by region


tfr %>% 
  ggplot(mapping = aes(x = lfp, y = tfr)) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(~region)


  









































































