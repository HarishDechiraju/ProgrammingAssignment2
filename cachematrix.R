## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    ##Setting the  temp variable
    i <- NULL

    ##Setting up the matrix m
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

    ##To get the matrix
    get <- function() {
    	## Return the matrix
    	m
    }

    ##To inverse the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Method to inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        i
    }

    ## Return list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Compute the inverse of the special matrix returned from above
##If the inverse has already been calculated and matrix not solve
##then the function should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {

    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()

    ## Return inverse if in set
    if( !is.null(m) ) {
            message("Cached data")
            return(m)
    }

    ## Matrix
    data <- x$get()

    ## Calculate the inverse 
    m <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(m)

    ## Return the matrix
    m
}


