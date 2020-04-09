## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL # re-initiate matrix
        set <- function(y) { # set matrix
                x <<- y
                m <<- NULL
        }
        get <- function() x # get matrix
        setmean <- function(solve) m <<- solve
        getmean <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$getsolve()
        if(!is.null(m)) { # check if the is cached matrix
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m) # get inverse of matrix
        m # return 
}
