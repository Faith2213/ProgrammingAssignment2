## Put comments here that give an overall description of what your
## functions do


## Write a short comment describing this function

  ##makeCacheMatrix <- function(x = matrix()) {
  ## This function creates a special matrix object that can 
    ## cache its inverse.
    
    makeCacheMatrix <- function(x = matrix()) {
          M <- NULL
          set <- function(y) {
                x <<- y
                M <<- NULL
           }
          get <- function() x
          setinverse<- function(inverse) M <<-inverse
          getinverse <- function() M
          list(set = set, get = get,
                         setinverse = setinverse,
                         getinverse = getinverse)
    }
  
    
    ## Write a short comment describing this function
    ## This function computes the inverse of the matrix in makeCachematrix
   
        cacheSolve <- function(x, ...) {
              ## Return a matrix that is the inverse of 'x'
               M <- x$getinverse()
          if (!is.null(M)) {
                message("returning inverse matrix")
                return(M)
            } else {
                  M <- solve(x$get())
                  x$setinverse(M)
                  return(M)
              }
    }