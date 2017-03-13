## Functions to check the cache for inverse of a matrix, 
##if not present then calculate the inverse

## Functio to store the inverse of matrix in cache

makeCacheMatrix <- function(x = matrix()) {
    y <- NULL
    get <- function() x
    getReverse <- function() y
    setReverse <- function(z){y <<- z}
    list(get=get,getReverse=getReverse,setReverse=setReverse)
}


## Function to find the inverse of a matrix if it is not available in cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  y <- x$getReverse()
  if(!is.null(y)){
    message("getting data from cache")
    return(y)
  }
  x1 <- x$get()
  y <- solve(x1)
  x$setReverse(y)
  y
}
