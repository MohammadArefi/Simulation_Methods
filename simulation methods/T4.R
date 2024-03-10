rm(list=ls(all=TRUE))
N = 1000
p = 0.25
u = runif(N)
x = floor(sqrt((2 log(2 * 3.14)^(- 1 / 2)) - 2 log(u))) + 1
count = table(x) / N