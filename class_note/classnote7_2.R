# EDA exploratory data analysis
# 탐색적 데이터 분석
# visualization 시각화 

# 시작점 - 끝점 
# ggplot2 
# base 

# ctrl + shift + h
# move to practice directory

rm(list = ls())
library("tidyverse")

fertility <- readxl::read_xlsx("fertility.xlsx")

# gather() -> pivot_longer()
# change to tidy data, long-form


fer.tidy <- fertility %>% 
  gather(year, fer, -region) %>% 
  arrange(region, year) 

head(fer.tidy, n= 10)   

# tidy-form, 
# in econometrics, panel-data
# longitudinal data

# gapminder
library("gapminder")
data("gapminder")

str(gapminder)

# gapminder: tidy data

# mapping
# GDP per capita: 1인당 국민소득
#   삶의 질. living standard 
# 기대수명 과의 관계

# 1. tidy data
# 2. mapping, aes(thetics)
# 3. geom(etrics)

gapminder %>% 
  ggplot(mapping = aes(x = gdpPercap, 
                       y = lifeExp)) +
  geom_point() +  # 산포도/scattergram
  geom_smooth(method = "lm") +   # 추세선
  scale_x_log10(labels = scales::dollar)

gapminder %>% 
  ggplot(mapping = aes(x = gdpPercap, 
                       y = lifeExp,
                       color = "pink")) +
  geom_point() +  # 산포도/scattergram
  geom_smooth(method = "lm") +   # 추세선
  scale_x_log10(labels = scales::dollar)

gapminder %>% 
  ggplot(mapping = aes(x = gdpPercap, 
                       y = lifeExp)) +
  geom_point(color = "pink", alpha = 0.2) +  # 산포도/scattergram
  geom_smooth(method = "lm") +   # 추세선
  scale_x_log10(labels = scales::dollar)

# shift + alt + down
# copy-and-paste

gapminder %>% 
  ggplot(mapping = aes(x     = gdpPercap, 
                       y     = lifeExp,
                       color = continent)) +
  geom_point(alpha = 0.2)    +  
  geom_smooth(method = "lm") +  
  scale_x_log10(labels = scales::dollar)


gapminder %>% 
  ggplot(mapping = aes(x     = gdpPercap, 
                       y     = lifeExp,
                       color = continent)) +
  geom_pointt(alpha = 0.2)    +  
  geom_smooth(method = "lm") +  
  scale_x_log10(labels = scales::dollar) +
  facet_wrap(~continent) +
  theme(
    legend.position = "none"
    )

# 1952년의 population & life expectancy
# 관계를 대륙별로 그려.
# 산포도 & 추세선
gapminder %>% 
  filter(year == 1952) %>% 
  ggplot(mapping = aes(x     = pop, 
                       y     = lifeExp)) +
  geom_point(alpha = 0.2)    +  
  geom_smooth(method = "lm") +  
  scale_x_log10() +
  facet_wrap(~continent) +
  theme(
    legend.position = "none"
  )

## 

library("tidyverse")

# 지역별, 연도별,
# 경제활동참가율(lfp), 출산율(tfr)

tfr <- readxl::read_excel("tfr_lfp.xlsx")

# 가설: hypothesis
# 여성이 일을 많이 하면, 
# 출산율이 감소할 것이다

# 산포도를 그려보시오.
# 추세선을 얹어 보시오.

tfr %>% 
  ggplot(mapping = aes(x = lfp, y = tfr)) +
  geom_point() +
  geom_smooth(method = "lm")
  
  
  
  






































  
  









