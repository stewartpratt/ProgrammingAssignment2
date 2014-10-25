## Put comments here that give an overall description of what your
## functions do

## creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    inverse <<- NULL
    set <- function(x) {
        mat <<- x
        inverse<<-NULL
        #getinverse()
    }
    get <- function() {
      mat
    }    
    getinverse <- function() {
      inverse
    }  
    list( set = set, 
          get = get,
          getinverse=getinverse
    )
  }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
      i <- x$getinverse()
      if(!is.null(i)) {
        return(i)
      }
      mat <- x$get()
      inverse <<- solve(mat)
      inverse
  }
