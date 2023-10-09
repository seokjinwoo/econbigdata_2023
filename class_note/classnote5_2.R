# comment 주석
# working directory 작업 디렉토리 

# moving to the directory 
# ctrl + shift + h

# check the current directory
# getwd()

# 연산. operation
# execution of the selection
# ctrl + enter (주석)

# addition
1 + 1
2 + 2
3 + 3

# subtraction
5 - 3
3 - 5

# multiplication
2*3 

# division
4/2
2/3

# 승 power
# 2 to the power of 3
2^3
2**3

# log 
# 상용로그, base 10 
# base e -> natural log

log(10, base = 10)
log(10)

exp(1)

log(exp(1))
exp(log(1))

log(exp(10))
exp(log(10))


# scalar, 
# vector: a stack of scalars
# c(): combine
# = : put the right thing into the left

a = c(1,2,3,4,5)
print(a)

# =, <-, ->
a <- c(1,2,3,4,5)
c(1,2,3,4,5) -> a
print(a)

# 길이, 차원, for-loop (반복작업)
length(a)

# scalar, operation, vector, operation
# comformable 차원이 맞아야 함.
# x + y
# element-by-element operation

print(a)
2*a + 3

a
log(a)

exp(a)

# scalar, vector, subvector 부분벡터 
# set, subset 
# indexing 뽑아낸다. 
# [ ]: bracket ( ): parenthesis 
a[1]
a[3]

a[c(1,3)]
a[-c(1,3)]

# vector with patterns
# vector with ones 
# rep(): repetition

ones <- rep(1,10)
ones

# sequence 수열 
# seq()

b <- seq(from = 1, to = 100, by = 5)

b <- seq(from = 1, 
         to   = 100, 
         by   = 5)

print(b)


# 2000~2023 

b <- seq(from = 2000, 
         to   = 2023, 
         by   = 1)

year <- 2000:2023
print(year)

ones
b

c(ones, b)

# scalar, vector, matrix
# a group of vectors 
# matrix 
# rectangle 사각형 n X k 

# <-: alt + - 
# x: vector, X: matrix 

A <- matrix(1:12, nrow = 4)
B <- matrix(1:12, nrow = 3)

dim(A)
dim(B)

nrow(A)
ncol(A)

# scalar, vector, matrix, submatrix 
# 부분 행렬

A[1,1]
A[2,1]

A[c(1,2),]
A[,c(1,3)]

# 2x2 square matrix 정방행렬 
A.1 <- A[c(1,2), c(1,3)]
A.1

# determinant 
det(A.1)

# the inverse of A.1 does exist
# solve()
A.i <- solve(A.1)

# check if A.i is the inverse of A.1 
A.i %*% A.1
A.1 %*% A.i

# scalar, vector, matrix
# matrix with patterns 

# diagonal matrix 대각형렬
diag(1, 5, 5)

rep(c(1,2),3)
rep(c(1,2),c(3,3))

diag(rep(c(1,2),c(3,3)))

# scalar, vector, matrix 
# matrix with patterns 

# triangular matrix 
# 삼각행렬 
# lower-triangular matrix 하삼각 
# upper-triangular matrix 상삼각 

A.1

upper.tri(A.1) # logical 

A.1[upper.tri(A.1) ] 

A.L <- A.1
A.L
A.L[upper.tri(A.L)] <- 0 

A.L # 하삼각 행렬 

lower.tri(A.1) # logical 

# 상삼각 행렬.
A.U 


# scalar, vector, matrix 
# cbind(): column bind
# rbind(): row bind 


A.1
cbind(1, A.1)
rbind(1, A.1)

# pre-processing 전처리 
# data cleaning - 90% 

## programming 

# mode
# 숫자 - numeric
# 문자 - character, string 
# 논리 - logical (true or false)
#         1 if true, 0 otherwise 

# numeric
x <- c(1:5)
print(x)

mode(x)

# character
y <- c("a","b","c","d","e")
print(y)
mode(y)

names(x) <- y
print(x)

# logical 
x
z <- x > 3
print(z)
mode(z)

x[z]
x[x>3]

x[c("a","c")]

# numeric, character, logical 
# vector, matrix -> same mode

# list 

# random number
# rnorm: randomly drawn from
#         standard normal distribution
#         표준정규분포 

set.seed(123456)
list.normal <- rnorm(10)

print(list.normal)

# 정규분포
# 평균 0, 표준편차 1
# param: parameter 모수 
set.seed(123456)
list.normal <- list(sample = rnorm(10),
                    dist   = "normal",
                    param  = list(mean = 0,
                                  sd   = 1)
                    )

list.normal$sample
list.normal$dist
list.normal$param
list.normal$param$mean
list.normal$param$sd

# mean = 2, sd = 2, n = 100개
# list.normal 에 담아 보시오. 

set.seed(123456)
list.normal <- list(sample = rnorm(n    = 100,
                                   mean = 2,
                                   sd   = 2),
                    dist   = "normal",
                    param  = list(mean = 2,
                                  sd   = 2)
)

list.normal$sample

# scalar, vector, matrix, list 

# mode change 
# numeric <-> character


x
is.numeric(x)
is.character(x)

x.c <- as.character(x)
is.numeric(x.c)
is.character(x.c)
x.c

c(1, "a")
c(1>0, 2)
c(1<0, 4)

is.numeric(1>0)
is.logical(1>0)

# random-number generation
# 난수 발생. 
# simulation

set.seed(123456)
rnorm(10)
rnorm(n = 10, mean = 2, sd = 2)

rchisq(n = 10, df = 5)

# sampling 표집 
s <- c(1:10)
print(s)

set.seed(123456)
sample(s, size = 5)

# sampling without replacement
set.seed(123456)
sample(s, size = 10)

# sampling with replacement 
set.seed(123456)
sample(s, size = 5, replace = TRUE)

# a~j
# sample 5 letters with replacement
s =c("a","b","c")
set.seed(123456)
sample(s, size = 5, replace = TRUE)

set.seed(123456)
sample(c("red","blue"),
       size = 5,
       replace = TRUE,
       prob = c(0.7, 0.3))

# COVID-19, 
# 감염/비감염
# n = 30
# Pr(감염) = 0.1 

set.seed(123456)
p <- 0.4
sample(c("감염","비감염"),
       size = 30,
       replace = TRUE,
       prob = c(p, 1-p))

## programming

# if 조건문 , for-loop 반복 
# 
# if (조건) {
#   task1 
# } else {
#   task2 
# }

set.seed(1234567)
x.r <- rnorm(n = 20)
print(x.r)

set.seed(1)
if (rnorm(1) > 0) {
  print("The sum is ")
  sum(x.r) # 합
} else {
  print("The mean is ")
  mean(x.r)
}

# for-loop 반복 
# 직관적, 느려, purrr::map(), apply()

for (year in c(2010:2015)) {
  print(paste("The year is ", year))
}

# if & for-loop

# even-number 짝수 
for (i in 1:10) {
  if (i %% 2) { # 나머지가 있으면 
    next
  } 
  print(i)
}

# print odd-numbers in 1:10 
# !: not 
# 집합과 명제 
for (i in 1:10) {
  if (!i %% 2) { # 나머지가 있으면 
    next
  } 
  print(i)
}

## data 를 만진다. 
## iris 붓꽃 Fisher, F-분포
## Palmer penguins
## mtcars 자동차에 대한 데이터 

data("iris")

# collect the numeric columns

# 1. 빈바구니 준비(o)
# 2. for-loop as many as the # of columns(o)
# 3. numeric?
# 4. yes: collect, no: next column


iris_num <- NULL 
for (i in 1:ncol(iris)) {
  if (is.numeric(iris[,i])) {
   iris_num <- cbind(iris_num, iris[,i])  
  }
}

iris_num <- data.frame(iris_num)
head(iris_num)
tail(iris_num)

# apply()
# purrr::map()
sapply(iris, is.numeric)
iris_num <- iris[ ,sapply(iris, is.numeric)]
head(iris_num)

# function 

## objects: scalar, vector, matrix
##          list 
## for-loop, if conditions 

## function 함수
## y = f(x)
## x -> f-box -> y
## (x) -> f-box -> (y)

## functional programming (함수형)
## object-oriented programming (객체지향적)

# x: arguments
# function_name <- function(x) {
#   
#   computation on the arguments (x)
#   body, box 
#   
#   return(y)
# }

# 정규화. normalize
# divide-and-conquer

# 1. x 를 받아
# 2. x에서 x의 mean 을 빼. demean
# 3. x의 standard deviation으로 나눠 
# 4. 값을 return 

normalize <- function(x) {
  # demean
  numerator <- x - mean(x)
  # denominator
  denominator <- sd(x)
  # normalize
  y <- numerator/denominator
  # return the output
  return(y)
}

set.seed(123456)
f <- rnorm(n=10, mean = 5, sd = 3)


normalize(f) -> f.s 

mean(f.s)
sd(f.s)

# chi2(df=10) 50개를 뽑아. normalize 
g <- rchisq(n = 50, df = 10)
normalize(g) -> g.s

mean(g.s)
sd(g.s)

# functional programming 
# common part
# special part 

## data management 자료 관리 
## data wrangling 

## data pre-processing 데이터 전처리 
## data cleaning 

# clear the memory
rm(list = ls())

# dataframe: matrix 
x <- data.frame(x1 = 1:10,
                x2 = 11:20,
                x3 = 21:30)

class(x)
mode(x)

rm(list = ls())

# data on cars
data("mtcars") 

# structure of data
str(mtcars)

# mtcars: list
# variable: $
mtcars$hp

# indexing
# first 3 observations
mtcars[1:3, ]

# last 3 observations
mtcars[30:32, ]

# mpg > 30 보다 큰 관측치 

mtcars[mtcars$mpg>30, ]

# mpg > 평균 mpg 보다 큰 관측치 
a <- mean(mtcars$mpg)

mtcars[mtcars$mpg>mean(mtcars$mpg),]

# observations satisfying a condition 
# multiple conditions 

# mpg > 30 & cyl == 4
mtcars$mpg>30 
mtcars$cyl == 4

# &: and (intersection), |: or (union)
mtcars$mpg>30 & mtcars$cyl == 4
mtcars[mtcars$mpg>30 & mtcars$cyl == 4,
       1:2]

# or 
mtcars[mtcars$mpg>30 | mtcars$cyl == 4,
       c(1:2)]

## packages 
## a collection of functions 

## dplyr, tidyverse 
## dplyr 

install.packages("dplyr")

library("dplyr")

# pipe operator
# %>%  -> |>

# composite function

# y = f(g(x))
# y <- x %>% 
#   g() %>% 
#   f() 

# 사이트　가서，
# download the data
# unzip
# move files to practice folder
# read the data
# laborforce.csv 
# csv format: comma(tab) separated value
#             delimiter(구분자)
# delimiter: , | space tab ; 

rm(list = ls())
library("dplyr")
lfp <- read.csv("laborforce.csv",
         header = TRUE)










































































































































































































