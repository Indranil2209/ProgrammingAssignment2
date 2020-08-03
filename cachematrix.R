## I simply put x as the matrix 
## Our aim is to write pair of functions named "makeCacheMatrix" and "cacheSolve" that cache inverse of a matrix
##and set "j" value as none
## After that I inversed the given matrix


makeCacheMatrix <- function(x = matrix()) {
j <- NULL
set <- function(y)
x <<- y
j <<- NULL
        
}
get<-function()x
setInverse<-function(inverse)j<<-inverse
getInverse<-function()j
list(set=set, get=get,
setInverse=setInverse
getInverse=getInverse)
}
        


## In this part using cache Solve I was able to slove the inverse of matrix  by solving the inverse matrix given above 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
j <- x$getInverse()
if(!is null(j)){
        message("getting cahced data")
        return(j)
  
}
mat<- x$get()
j <- solve(mat....)
x$setInverse(j)
j
}
