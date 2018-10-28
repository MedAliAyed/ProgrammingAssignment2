## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
  i <- NULL
  set <- function(y){
    x <<-y
    i <<-NULL
  }
  get <- function() x
  setinvers <- function (inv) i <<- inv
  getinvers <- function() i
  list(set = set, get = get,
       setinvers = setinvers,
       getinvers = getinvers)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
          i <- x$getinvers()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinvers(i)
  i
}
