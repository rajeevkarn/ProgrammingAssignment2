## makeCacheMatrix() fucntion makes a mtrix cacheable
## cacheSolve() function retrives the inverse of a matrix from chache and if not found in chache then
## it calculates the inverse and chaches it


## This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        
## Initialize the variable to store the inverse of matrix to NULL          
        i <- NULL

## set function is given in example but is not required for the assignment
        
#         set1 <- function( y ){
#                 x <<- y
#                 i = NULL
#         } 
        
## function to return the matrix        
        get1 <- function() x

## function to set the inverse of matrix         
        setinv1 <- function(inv) i <<- inv

## function to return the inverse of matrix        
        getinv1 <- function() i
        

## return the object with encapsulated functions
        # list(set=set1, get=get1,setinv=setinv1,getinv=getinv1)
        list(get=get1,setinv=setinv1,getinv=getinv1)
        

}



##  This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve 
## the inverse from the cache.

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'

## read the inverse if it has been already calculated        
        i <- x$getinv()

## in inverse has been calculated then message and return                
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }

## if inverse has not been calculated already then compute the inverse and cache it.                

## get the matrix
        m <- x$get()
## compute inverse        
        i <- solve(m,...)
## cache it
        x$setinv(i)
## return inverse        
        i
        
}


