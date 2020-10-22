## These are two functions that create a special matrix and caches the
## inverse of the matrix to reduce the time spent in

## This function creates a special matrix that caches its inverse

makeCacheMatrix <- function(x = matrix()) {
  ma <- NULL
  set <- function(y) {
    x <<- y
    ma <<- NULL
  }
  get <- function()
    x
  setInv <- function(invMatrix)
    ma <<- invMatrix
  getInv <- function()
    ma
  list(
    set = set,
    get = get,
    setInv = setInv,
    getInv = getInv
  )
}


## This function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
  ma <- x$getInv()
  if (!is.null(ma)) {
    message("getting cached data")
    return(ma)
  }
  data <- x$get()
  ma <- ans(data)
  x$setInv(ma)
  ma
  
}
