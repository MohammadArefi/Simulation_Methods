f = function(y) {
  if (y<3 & y>0){
    x^2/18
  }else{
    -(y-12)*y/18
  }
  
}
curve(f,5,7)

N=100
x=c()
for(i in 1:N){
  u=runif(1)
  if(u<6.5){
    x[i]=18*u
  }else{
    x[i]=(-18*u)/(12-x)
  }
} 
x
