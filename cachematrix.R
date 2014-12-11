## This file includes a pair of functions for calculating
## the inverse of a matrix, either by returning a previous
## cached value, or calculating it and caching it for 
## future use.

## The first function creates a set of helper functions for
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
    
    i <- NULL    ## Initialize the inverse cache variable
    set <- function(y) {  ## This function is not used in our assignment
        x <<- y  ## Store the matrix in a global variable
        i <<- NULL  ## Store an empty matrix inverse cache global variable
    }
    get <- function() x  ## Retrieve the matrix
    setinv <- function(inv) i <<- inv  ## Set the calculated matrix inverse
                                       ## in the global environment cache
    getinv <- function() i  ## Get the cached matrix inverse value
    list(set = set, get = get, ## Return the list of helper functions.
         setinv = setinv,
         getinv = getinv)

}


## The second function provides the inverse matrix calculation, either
## by using a preexisting cached result, or a new calculation.

cacheSolve <- function(x, ...) {
    
        ## Return a matrix that is the inverse of 'x'
    
    ## Check if the matrix is identical to the cached matrix
    ## and a cached value has been calculated. If so, return it.

    i<-x$getinv()  ## Get the cached inverse matrix value
    if (!is.null(i)){  ## Check if the value reflects a previous calculation
        
        message("The inverse value has already been cached. Here it is:")
        return (i)
        
    }
    
    ## If there was no cached result, calculate 
    ## the inverse matrix and return it.
    
    else{
        
        data<-x$get()  ## Get the stored matrix
        i<-solve(data)  ## Calculate the inverse matrix value
        x$setinv(i)  ## Store the calculated value for later use
        i  ## Return the result
        
    }
    
}
