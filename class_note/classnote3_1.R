# comment 주석
# working directory 작업 디렉토리 

# moving to the directory 
# ctrl + shift + h

# check the current directory
# getwd()

# ctrl + 1, ctrl + 2

# 기본 연산 
# execute the selection
# ctrl + enter 

# addition
1 + 1
2 + 2

# subtraction 
5 - 3

# multiplication
2*3

# division
4/2

# power 승 2의 3승 
# 2 to the power of 3 
2^3
2**3

# exponent exp(), e
# magic number for compounding

# log, 상용로그, base = 10
# log = natural log, base = e 

log(10, base = 10)
log(1, base = 10)

log(10)

# e 
exp(1)

# e^2
exp(2)

# 
exp(log(2))
log(exp(2))

# scalar 숫자 하나 

# vector 
# a stack of scalars. column vector
# c(): combine 

c(1,2,3,4,5)

a = c(1,2,3,4,5)

# = equal 
# put the right thing to the left

a <- c(1,2,3,4,5)
print(a)

c(1,2,3,4,5) -> a
print(a)

print("Hello, R!")

# alt + -
a <- c(1,2,3,4,5)

# operation of vectors
# dimension must be conformable.
# 차원이 맞아야 함.
# length(): for-loop 

length(a)

print(a)
a

2*a + 3
2*a - 3

log(a)
exp(a)

# scalar/vector 
# subvector 부분 벡터 
# set /subset 

# indexing 
a

# bracket 
a[1]
a[3]

a[c(1,3)]
a[-c(1,3)]

# scalar/vector/subvector

# 패턴이 일정한 벡터 
# rep(): repetition 

ones <- rep(1, 10)
print(ones)

# two X 10 times
twos <- rep(2, 10)
print(twos)

rep(c(1,2), 10)

# (numerical) sequence 수열 
# seq()

b <- seq(from = 1, 
         to   = 100, 
         by   = 5)

print(b)

# 2000-2023 수열 

year <- 2000:2023
print(year)


ones
b

c(ones, b)

# scalr/vector/subvector
# /vectors with patterns


# matrix 
# a group of column vectors
# rectangle (n X k) 

A <- matrix(1:12, nrow = 4)
B <- matrix(1:12, nrow = 3)

print(A)
print(B)

# dim()
dim(A)
nrow(A) # 관측치 갯수 
ncol(A) # 변수 갯수 

dim(B)

# indexing: sub-matrix 
print(A)

A[1,]
A[2,]
A[,1]

# 1, 2 row & 1, 3 column
# A.1 square matrix 정방행렬 

A.1 <- A[c(1,2),c(1,3)]
print(A.1)

# 2 * x = 3, x = ?
# inverse 
# determinant: det()
det(A.1)

# inverse matrix 
# solve()
A.i <- solve(A.1)

# multiplication of matrices
A.1 %*% A.i
A.i %*% A.1

# matrix with patterns
# deep learning 심화학습 
# tensor 

# diagonal matrix 대각행렬 
# diag()

D <- diag(1,5,5)
print(D)

rep(c(1,2),3)
rep(c(1,2), c(3,3))
diag(rep(c(1,2), c(3,3)))

# scalar, (column) vector
# matrix, matrix with patterns
# variance-covariance matrix 
# deep learning - tensor 

A.1 
# diagonal element 
diag(A.1)

# triangular matrix
upper.tri(A.1)

# lower triangular matrix
A.L <- A.1
print(A.L)
A.L[upper.tri(A.L)] <- 0
A.L

# upper triangular matrix 
A.U <- A.1
print(A.U)
A.U[lower.tri(A.U)] <- 0
A.U

# vector or matrix: bind
# column / row bind 
# cbind() / rbind()

A.1
cbind(1, A.1)
cbind(A.1, 1)

rbind(1, A.1)
rbind(A.1, 1)

## data-related objects 
## scalar, vector, matrix 

## simple programming 
## R / Python 
## Stata -> R -> machine learning, 
## AI, NLP (natural language process)
## 한글 -> Python

## mode

x <- c(1:5)
print(x)

mode(x) # numeric 숫자 

y <- c("a", "b", "c", "d", "e")
print(y)
mode(y) # character 문자 string 

names(x) <- y
print(x)

x

z <- x > 3 # logical 논리 참/거짓 
print(z)
mode(z)

# mode: numeric, character, logical 


# indexing 
x.s1 <- x[1:3]
print(x.s1)

x.s2 <- x[c("a","b","c")]
print(x.s2)

x.s3 <- x[z]
print(x.s3)

# scalar, vector, matrix 
# mode 

## list: object 
## vector, matrix: same mode 

set.seed(123456) # 난수 추출. 시드. 
list.normal <- rnorm(10)  # drawn from standard normal
                          # distribution

print(list.normal)

set.seed(123456) 
list.normal <- list(sample = rnorm(10),
                    dist   = "normal",
                    param  = list(mean = 0,
                                  sd   = 1))

print(list.normal)  

# list can include many things, even list. 
# we need "$" to access the elements.

list.normal$sample
list.normal$dist 
list.normal$param
list.normal$param$mean
list.normal$param$sd

# 100개의 표준정규분포 평균 2, 표준편차 2
# 인 list 

set.seed(123456) 
list.normal <- list(sample = rnorm(n    = 100, 
                                   mean = 2 ,
                                   sd   = 2),
                    dist   = "normal",
                    param  = list(mean = 2,
                                  sd   = 2))

list.normal$sample

# change of mode or type
# date 
# 2023-09-18

set.seed(123456)
x <- c(rnorm(10))
print(x)

is.numeric(x)
is.character(x)
# x is numeric, not character

x.c <- as.character(x)
print(x.c)

is.character(x.c)

c(1, "a")

c(1>0, 2) # indicator function
c(1<0, 2) # 1 if true, 0 otherwise

# scalar, vector, matrix
# list, mode, change of mode

# random-number generation
# 난수 추출
# 이미 만들어 놓은 난수에서 추출
# seed를 정해준다. 

# snippet
set.seed(123456)
rnorm(n=10, mean=2, sd=2)

# chi-2 distribution 



































  
  
  























































