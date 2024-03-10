rm(list=ls(all=TRUE))
f = function(x) 3 * x ^ 2 - exp(x)
g = function(x) (exp(x) / 3) ^ 0.5
curve(g,0,2)
error = 10 ^ - 6
x = fx = c()
x[1] = 0.5
fx[1] = f(x[1])
n = 1
while(abs(fx[n]) >= error){
  x[n + 1] = g(x[n])
  fx[n + 1] = f(x[n + 1])
  n = n + 1
}
x
fx
gprime = expression(g)
g_prime = D(gprime,'x')