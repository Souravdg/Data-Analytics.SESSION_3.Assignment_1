#Create a mxn matrix of zeroes
user.m <- readline(prompt="Enter m value of matrix: ") #accept value from user
user.n <- readline(prompt="Enter n value of matrix: ") #accept value from user
m<- as.integer(user.m)
n<- as.integer(user.n)

print(paste("The dimension of the matrix is", m, "x", n))

mymat <- matrix(0, m, n)

mymat

#output: if m=4 and n=3
#      [,1] [,2] [,3]
#[1,]    0    0    0
#[2,]    0    0    0
#[3,]    0    0    0
#[4,]    0    0    0

ctr=0

for(i in 1:m) {
  for(j in 1:n) {   
    if(i==j) { 
      break;
    } else {
      mymat[i,j] = i*j # assigning the values only when i<>j
      ctr=ctr+1
    }
  }
  print(i*j) 
}

#output:
#[1] 1
#[1] 4
#[1] 9
#[1] 16
#[1] 25
#[1] 30
#[1] 35

print(ctr)

