## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
#to get the inverse of a matrix by cache
#cachematrix
makecachematrix<-function(x=matrix()){
  minv<-NULL
  set <- function(y) {
    x <<- y
    minv <<- NULL
  }
  get <- function() x
  setmatrixinverse <- function(inverse) minv <<- matrixinverse
  getmatrixinverse <- function() minv
  list(set = set, get = get,
       setmatrixinverse = setmatrixinverse,
       getmatrixinverse = getmatrixinverse)
}
  
#cache inverse
cachesolve<- function(x, ...) {
  minv <- x$getmatrixinverse()
  if(!is.null(minv)) {
    message("getting cached data")
    return(minv)
  }
  data <- x$get()
  minv <- matrixinverse(data, ...)
  x$setmatrixinverse(minv)
  minv
}
