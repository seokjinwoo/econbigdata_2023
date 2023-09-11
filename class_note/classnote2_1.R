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

## scalar, vector, subvector, 
## matrix, submatrix
## matrix with patterns 

## triangular matrix 삼각행렬
## programming 








































