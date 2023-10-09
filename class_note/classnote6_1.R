# data management 
# data wrangling 자료 관리 

# base R 기본 
# install.packages("dplyr")

# pipe opertator 
# y = g (f(x))
# %>% -> |>

# x %>% f() %>% g() %>% y

rm(list = ls() )
library("dplyr")

lfp <- read.csv("laborforce.csv", 
                header = TRUE)

# select, filter, group_by

# select: choose variables 

# structure
str(lfp)

# 1. from lfp (labor force 경제활동인구)
# 2. choose: region, year, male, female
# using dplyr and pipe operator

lfp.sub <- lfp %>% 
  select(region, year, male, female) 

head(lfp.sub)
tail(lfp.sub)

lfp.sub <- lfp %>% 
  select(-total)
head(lfp.sub)

head(lfp.sub, n = 3)
tail(lfp.sub, n = 3)

# dplyr: select, filter
# filter: select observations 

lfp.seoul <- lfp %>% 
  filter(region == "서울특별시")

# multiple conditions 다중조건 
lfp.seoul.2010 <- lfp %>% 
  filter(region == "서울특별시" &
           year >= 2010)
head(lfp.seoul.2010)

# 서울특별시, 경기도 

reg <- c("서울특별시", "경기도", "경상북도")
lfp.seoul <- lfp %>% 
  filter(region %in% reg)

# dplyr: select, filter 
# select: choose varaibles
# filter: choose observations 
# group_by: '마다' "매년' '각월'

t.1 <- lfp %>% 
  select(region, year, total) %>% 
  group_by(year)  %>% 
  summarise(N    = n(), # count the obs. 
            mean = mean(total), #compute the mean
            sum  = sum(total))  

print(t.1)

# dplyr:  select, filter, 
#         group_by, summarise

# mutate: create a new variable
# 전체 중에 female 의 비중

# select, filter, mutate 
# group_by, summarise 
# -> statistics 통계량들을 산출 

# pipe %>% : ctrl + shift + m

lfp %>% 
  select(region, year, total, female) %>% 
  mutate(lfp.ratio.female = female/total*100) %>% 
  group_by(year) %>% 
  summarise(N            = n(),
            ratio.female = mean(lfp.ratio.female),
            sd           = sd(lfp.ratio.female))

# graph 
# 연도별 by year, 
# draw a line graph of mean female ratio

library("ggplot2")


lfp %>% 
  select(region, year, total, female) %>% 
  mutate(lfp.ratio.female = female/total*100) %>% 
  group_by(year) %>% 
  summarise(N            = n(),
            ratio.female = mean(lfp.ratio.female),
            sd           = sd(lfp.ratio.female)) %>% 
  ggplot(mapping = aes(x = year, y = ratio.female)) +
  geom_point()  +
  geom_line()
  
# 여성/남성 (female/male*100)경제활동참가비율 
# 연도별 평균. 

## EDA 
## Exploratory Data Analysis 탐색적 자료 분석
## 요약통계량, summary statistics
## 기술통계량, descriptive statistics

## tidyverse package
## a wrapper 
library("tidyverse")
# install.packages("tidyverse")

rm(list = ls())
auto <- read.csv("auto.csv", 
                 header = TRUE)

# read.csv (base)
# too slow for large data set
auto2 <- readr::read_csv("auto.csv",
                         col_names = TRUE)

# auto data 
# sold in 1979 U.S.

attach(auto)

head(auto)
head(auto, n=-10)
head(auto, n=-70)

tail(auto)

str(auto)

typeof(make)


# summary statistics
summary(auto)


































































