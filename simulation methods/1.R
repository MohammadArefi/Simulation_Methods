x = c(-1,-0.5,0,0.5)
f = c(0.86,0.95,1.09,1.29)
n = length(x)
h = diff(x)
a = f
A = matrix(0,n,n)
A[1,1] = A[n,n] = 1
bb = c()
bb[1] = bb[n] = 0
for(j in 2:(n-1)){
  bb[j] = 3*(a[j+1]-a[j])/h[j]-3*(a[j]-a[j-1])/h[j-1]
  A[j,j-1] = h[j-1]
  A[j,j] = 2*(h[j-1]+h[j])
  A[j,j+1] = h[j]
}
c = solve(A, bb)
b = c()
d = c()
for(i in 1:(n-1)){
  b[i]=(a[i+1]-a[i])/h[i]-h[i]*(c[i+1]+2*c[i])/3
  d[i]=(c[i+1]-c[i])/(3*h[i])
} 
a
b
c
d