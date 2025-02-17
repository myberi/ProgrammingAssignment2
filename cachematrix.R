## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Caching the inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {
        inv_x <- NULL
        set <- function(y) {
                x <<- y
                inv_x <<- NULL
        }
        get <- function() x
        setinv <- function(solve) inv_x <<- solve
        getinv <- function() {inv_x}
        list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function
#  calculates the inverse of the special "matrix" created with the above function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv_x <- x$getinv()
        if(!is.null(inv_x)) {
                message("getting cached data")
                return(inv_x)
        }
        data <- x$get()
        inv_x <- solve(data, ...)
        x$setinv(inv_x)
        inv_x
}
