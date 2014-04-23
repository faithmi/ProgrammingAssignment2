## Put comments here that give an overall description of what your
## functions do

## Create a function to create a special "matrix" that can cache its inverse matrix

## Write a short comment describing this function

## This function could create a matrix, and compute and cache the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set = function(y){
    x <<- y
    inverse <<- NULL
  }
  get = function() x
  compute_inverse = function() inverse <<- solve(x)
  get_inverse = function() inverse
  list(set = set, get = get, compute_inverse = compute_inverse, get_inverse = get_inverse)
}


## Write a short comment describing this function

## This function could calculate the inverse matrix created by makeCacheMatrix before
## if the inverse already been calculated, then the inverse matrix could be retrieved from cache.

cacheSolve <- function(x, ...) {
  inverse = x$get_inverse()
  if (!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  dat = x$get()
  inverse = solve(dat)
  return(inverse)
}
