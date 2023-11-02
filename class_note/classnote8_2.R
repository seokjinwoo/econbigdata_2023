rm(list = ls())

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

head(tfr, n = 3)  
  

tfr %>% 
  ggplot(mapping = aes(x     = lfp, 
                       y     = tfr,
                       color = region)) +
  geom_point() +
  geom_smooth(method = "lm")  

# Simpson's paradox

# lfp & tfr: negative correlation
# 일가정 양립. family & career
# Claudia Goldin 

tfr %>% 
  ggplot(mapping = aes(x     = lfp, 
                       y     = tfr,
                       color = region)) +
  geom_point() +
  geom_smooth(method = "lm")  +
  facet_wrap(~region) +
  theme(
    legend.position = "none"
  )

# scatter plot 산포도
# fitted line with confidence interval


# trend over time 시간 추세선

tfr %>%
  ggplot(mapping = aes(x = year, 
                       y = tfr, 
                       color = region)) +
  geom_line()

# 서울특별시, 경기도, 인천광역시 
# 만 뽑아서 다시 그림을 그린다 

seoulM <- c("서울특별시", "경기도", "인천광역시")

tfr %>%
  filter(region %in% seoulM) %>%
  ggplot(mapping = aes(x = year, 
                       y = tfr, 
                       color = region)) +
  geom_line() +
  labs(
    title = "출산율간의 시간 추세선",
    x = "연도",
    y = "합계출산율(명)"
  )

## 산포도/시간 추세선
## 히스토그램. 분포. 

## 합계출산율의 분포 


tfr %>%
  ggplot(mapping = aes(x = tfr)) +
  geom_histogram()

# 2015, 2016, 2017년도의 
# 합계출산율의 분포(히스토그램)를 
# 각각(겹쳐서) 구하시오.


tfr %>%
  filter(year >= 2015 & year <= 2017)  %>%
  ggplot(mapping = aes(x = tfr, 
                       fill = as.factor(year))) +
  geom_histogram(alpha = 0.5)














  
  


















































  
  









