makeCacheMatrix <-function(x=mnatrix()){
  i <-NULL
set<-function(y){
  x <<-y
  i <<-NULL
}
get <-function()x
setinverse <- function(inverse) i <<- inverse
getinverse <- function() i
list(set=set, get=get, setinverse = setinverse,getinverse = getinverse)
}

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data of your inputted inverse")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i
}