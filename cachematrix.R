## This file includes a pair of functions for calculating
## the inverse of a matrix, either by returning a previous
## cached value, or calculating it and caching it for 
## future use.

## This function creates a set of helper functions for
## supporting caching the calculation of the inverse of
## a matrix. These functions include:
##
## 1. Setting the matrix in the global environment
## 2. Getting the matrix from the global environment
## 3. Setting the value of the matrix inverse
## 4. Getting the value of the matrix inverse
##
## The function returns a list of the above functions

makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv <- function(inv) m <<- inv
    getinv <- function() m
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
