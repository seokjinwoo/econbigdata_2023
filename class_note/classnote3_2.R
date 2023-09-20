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














































