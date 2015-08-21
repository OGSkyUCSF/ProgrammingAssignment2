## Put comments here that give an overall description of what your
## functions do

## Cache a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
     invX <- NULL
    set <- function(y) {
      x <<- y
      invX <<- NULL
    }
    get <- function() x
    setinv <- function(inv) invX <<- inv
    getinv <- function() invX
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}



## Calculate an inverse for a matrix, 
## reusing the cached value if it was previously calculated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}
