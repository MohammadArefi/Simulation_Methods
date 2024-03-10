fun=function(x) exp(3 * x) * sin(2 * x)
a = 0
b = pi/4
S = c()
for(index in 1:4){
  h=(b-a)/2^(index-1)
  x=seq(a,b,h)
  f=fun(x)
  n=length(x)
  s=f[1]+f[n]
  if(n>2){
    for(i in 2:(n-1)){
      s=s+2*f[i]
    }}
  s=s*h/2
  S[index]=s
}
S
S1=c()
for(j in 1:3){
  S1[j]=(4*S[j+1]-S[j])/3
}
S1
S2=c()
for(j in 1:2){
  S2[j]=(16*S1[j+1]-S1[j])/15
}
S2
(64*S2[2]-S2[1])/63


## answer = 2.588627