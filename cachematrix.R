#It computes the inverse of the special matrix by function makeCacheMatrix.# 

#It contains a list of functions to set matrix or get matrix from cached data.# 

makeCacheMatrix <- function(x = matrix()) {
    mInverse <= NULL
    set <- function(y){
        x <<- y
        mInversve <<- NULL
    }
    get <- function() x
    setInverse <- function(Inverse) mInverse <<- inverse
    getInverse <- function() mInverse
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


#It is to test whether the inverse matrix is cached. if it is, then returns, if not, calculate the inverse matrix and return# 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(x)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    m
}
