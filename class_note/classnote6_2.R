# dplyr
# pipe operator %>% 
# tidyverse, ggplot (visualization)

# data management
# data wrangling (정제): dplyr

rm(list = ls())
library("dplyr")

lfp <- read.csv("laborforce.csv", 
                header = TRUE)

# ctrl + shift + h: 
# set up working directory

# lfp: labor force participation
#      경제활동참가 (인구) 구직 + 취업


head(lfp) # first 6 observations
tail(lfp) # last 6 observations

head(lfp, n = 10) 
tail(lfp, n = 10)

# structure
str(lfp)

# select, filter
# select: choose variables

# pipe operator

lfp.sub <- lfp %>% 
  select(region, year, male, female)

lfp.sub <- lfp %>% 
  select(-total)

# filter()
# select the observations
# conditions 
lfp %>% 
  filter(region == "서울특별시")

# multiple conditions
lfp %>% 
  filter(region == "서울특별시" &
           year >= 2010)

# 서울특별시, 경기도, 인천광역시 
# (수도권)

a <- c("서울특별시", "경기도", "인천광역시")
lfp %>% 
  filter(region %in% a)

lfp %>% 
  filter(region == "서울특별시" |
           region == "경기도" |
           region == "인천광역시" )

lfp %>% 
  filter(region == c("서울특별시", "경기도", "인천광역시"))

# dplyr
# select, filter

# group_by, summarise 
# 매년, 각년, 연도별 

t.1 <- lfp %>% 
  select(region, year, total) %>% 
  group_by(year) %>%
  summarise(N    = n(),
            mean = mean(total),
            sd   = sd(total))

print(t.1)

## region 별로, male의 경제활동인구
## 평균, 표준편차 를 구하시오. 

lfp %>% 
  select(region, year, male) %>% 
  group_by(region) %>%
  summarise(N    = n(),
            mean = mean(male),
            sd   = sd(male))

# select, filter
#  group_by, summarise 

# mutate: create new variables

# 전체 경활인구 중에서 여성의 비중
# career and family
# 경력과 가정 (생각의 힘)

# female/total * 100
# ctrl + shift + m

lfp %>% 
  select(region, year, total, female) %>% 
  mutate(lfp.ratio.female = female/total*100) %>% 
  group_by(year) %>% 
  summarise(N            = n(),
            ratio.female = mean(lfp.ratio.female),
            sd           = sd(lfp.ratio.female))

## tidyverse
## a wrapper
library("tidyverse")

lfp %>% 
  select(region, year, total, female) %>% 
  mutate(lfp.ratio.female = female/total*100) %>% 
  group_by(year) %>% 
  summarise(N            = n(),
            ratio.female = mean(lfp.ratio.female),
            sd           = sd(lfp.ratio.female)) %>% 
  ggplot(mapping = aes(x = year, y = ratio.female)) +
  geom_point() +
  geom_line()

## 연도별 남성 대비 여성의 경제활동인구 
## female/male  
## 남성 1명당 여성 ?명이 일을 하고 있는지

lfp %>% 
  select(region, year, male, female) %>% 
  mutate(lfp.ratio.female = female/male*100) %>% 
  group_by(year) %>% 
  summarise(N            = n(),
            ratio.female = mean(lfp.ratio.female),
            sd           = sd(lfp.ratio.female)) %>% 
  ggplot(mapping = aes(x = year, y = ratio.female)) +
  geom_point() +
  geom_line() +
  ylim(min=0, max=100)

## EDA 
## Exploratory Data Analysis 
## 탐색적 자료 분석 
## summary statistics
## descriptive statistics 

rm( list = ls())
auto <- read.csv("auto.csv", 
                 header = TRUE)
attach(auto)














































































