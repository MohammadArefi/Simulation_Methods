x <- readline(prompt="Enter x: ")
y <- readline(prompt="Enter y: ")
n <- readline(prompt="Enter n: ")
m <- length(x)
s <- vector()
if (n < m - 1){
  for(i in 0:n){ 
    for (j in x){s <- append(s , sum(j ^ i))}
}
}else{
    print('you entered invalid number')
}
A = matrix(c(s),m,m,byrow=TRUE)
B = c (y)
solve(A,B)