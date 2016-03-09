## this program is to compute the inverse of a matrix. If it is already computed once, it will return the inverse, if not it 
## will calculate the inverse.

## this mthod gets, and sets a matrx (reates matrix to by invereted).
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

## this method caclulates the inverse that was created in the previous function.
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
