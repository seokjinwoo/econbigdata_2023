# 다음주 이 시간에 중간고사
# 3:00~5:45

tfr <- readxl::read_excel("tfr_lfp.xlsx")
head(tfr)

library("tidyverse")

tfr %>% 
  ggplot(mapping = aes(x = lfp, y = tfr)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "여성의 경제활동참가율과 출산율",
    x = "경제활동참가율(%)",
    y = "합계출산율(명)"
  ) +
  facet_wrap(~region)

p <- tfr %>% 
  ggplot(mapping = aes(x = lfp, y = tfr)) +
  geom_point()

p <- p + geom_smooth(method = "lm", se = FALSE)
p <- p + facet_wrap(~region)
p <- p + labs(
  title = "여성의 경제활동참가율과 출산율",
  x = "경제활동참가율(%)",
  y = "합계출산율(명)"
)
p

# Simpson's paradox

# 연도별, 지역별 출산율의 추세선 trend line


tfr %>% 
  ggplot(mapping = aes(x     = year, 
                       y     = tfr,
                       group = region,
                       color = region)) +
  geom_line() 

tfr %>% 
  ggplot(mapping = aes(x     = year, 
                       y     = tfr,
                       group = region,
                       color = region)) +
  geom_line() +
  facet_wrap(~region)

## 수도권: 서울특별시, 경기도, 인천광역시 
## 추세선

seoulM <- c("서울특별시","경기도","인천광역시")

tfr %>% 
  filter(region %in% seoulM) %>% 
  ggplot(mapping = aes(x     = year, 
                       y     = tfr,
                       group = region,
                       color = region)) +
  geom_line() +
  facet_wrap(~region) +
  theme(
    legend.position = "none"
  )

## 상관관계를 보기 위한, 
## 산포도, 지도 
## time trend lines
## ggplot2 extension 

## statistics
## distribution 분포

## 히스토그램 histogram

tfr %>% 
  ggplot(mapping = aes(x = tfr)) +
  geom_histogram(fill = "steelblue",
                 color = "white")

tfr %>% 
  ggplot(mapping = aes(x = tfr)) +
  geom_histogram(aes(y = ..density..),
                 fill = "steelblue",
                 color = "white")

tfr %>% 
  ggplot(mapping = aes(x = tfr)) +
  geom_histogram(aes(y = ..density..),
                 fill  = "steelblue",
                 color = "white",
                 bins  = 10)

tfr %>% 
  ggplot(mapping = aes(x = tfr)) +
  geom_histogram(aes(y = ..density..),
                 fill      = "steelblue",
                 color     = "white",
                 binwidth  = 0.025)

## 서울특별시, 경기도의
## 합계출산율의 히스토그램을 그리시오. 

metro <- c("서울특별시", "경기도")

tfr %>% 
  filter(region %in% metro) %>% 
  ggplot(mapping = aes(x = tfr, fill = region)) +
  geom_histogram(binwidth = 0.05,
                 alpha = 0.4,
                 color = "white")

## Bar graphs 
## 요약통계량 그릴 때 편해

library("AER")
data("CPSSW8")

library("tidyverse")

# region 별 평균 earning

CPSSW8 %>% 
  group_by(region) %>% 
  summarise(
    N = n(),
    mean.earning = mean(earnings),
    sd.earning = sd(earnings)
    ) %>% 
  ggplot(mapping = aes(x = region,
                       y = mean.earning,
                       fill = region)) +
  geom_bar(stat = "identity")
  
# 지역별, 성별 평균 소득 


CPSSW8 %>% 
  group_by(region, gender) %>% 
  summarise(
    N = n(),
    mean.earning = mean(earnings),
    sd.earning = sd(earnings)
  ) %>% 
  ggplot(mapping = aes(x = region,
                       y = mean.earning,
                       fill = gender)) +
  geom_col()

CPSSW8 %>% 
  group_by(region, gender) %>% 
  summarise(
    N = n(),
    mean.earning = mean(earnings),
    sd.earning = sd(earnings)
  ) %>% 
  ggplot(mapping = aes(x = region,
                       y = mean.earning,
                       fill = gender)) +
  geom_col(position = "dodge")

CPSSW8 %>% 
  group_by(region, gender) %>% 
  summarise(
    N = n(),
    mean.earning = mean(earnings),
    sd.earning = sd(earnings)
  ) %>% 
  ggplot(mapping = aes(x = gender,
                       y = mean.earning,
                       fill = gender)) +
  geom_col(position = "dodge") +
  facet_wrap(~region) +
  coord_flip() +
  theme_dark()
# ggtheme 
# 538 

## going back to EDA

rm(list = ls())
auto <- read.csv("auto.csv", h
                 eader = TRUE)

attach(auto)

# structure
str(auto)

# summary 요약통계량
summary(auto)

# missing value
complete.cases(auto)

# extract the observations
# with NAs
auto[!complete.cases(auto),]

# 
summary(price)

# draw a histogram for price

auto %>% 
  ggplot(mapping = aes(x = price)) +
  geom_histogram(fill = "black",
                 color = "gray",
                 bins = 18)

auto %>% 
  ggplot(mapping = aes(x = price, 
                       fill = foreign)) +
  geom_histogram(binwidth = 600)

RColorBrewer::display.brewer.all()

library(RColorBrewer)

# set up color palette
auto %>% 
  ggplot(mapping = aes(x = price, 
                       fill = foreign)) +
  geom_histogram(binwidth = 600, alpha=0.5) +
  scale_fill_brewer(palette = "Set1")

# transform price into log-price
library("ggtext")

auto %>% 
  mutate(log_price = log(price)) %>% 
  ggplot(mapping = aes(x = log_price,
                       y = ..density..,
                       fill = foreign)) +
  geom_histogram(alpha=0.5, color = 'gray') +
  stat_density(geom = "line") +
  scale_fill_brewer(palette = "Set1") +
  labs(
    title = "**로그-가격**의 분포",
    subtitle = "*미국자동차*"
  ) +
  theme(
    plot.title = element_markdown(),
    plot.subtitle = element_markdown()
  )
    
  
























  
  
  
  
  





















































































