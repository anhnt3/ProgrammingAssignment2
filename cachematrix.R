## Put comments here that give an overall description of what your
## functions do

## make a matrix that cache the inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y)
    {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setI <- function(inverse) i <<- inverse
    getI <- function() i
    list(set = set, get = get, setI = setI, getI = getI)
}


## return the reverse of matrix if cached, otherwise calculate the inverse and store it in cache

cacheSolve <- function(x) {
    i <- x$getI()
    if(!is.null(i))
    {
        message("getting cached data")
        return(i)
    }
   
    message("calculate inverse and store in cache")
    matrix <- x$get()
    i <- solve(matrix)
    x$setI(i)
    i
}
