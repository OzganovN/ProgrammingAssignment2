## Put comments here that give an overall description of what your
## functions do

makeCacheMatrix<- function (x =matrix()){
        j<- NULL
        set<- function (y) {
                j<<-NULL
                y<<-x
        }
        
        get<- function() x
        getinv<- function() j
        setinv<- function (inverse) j <<- inverse
        list(set= set, setinv=setinv, get=get, getinv=getinv)
}

cacheSolve<- function(x, ...){
        i<- x$getinv()
        
if (!is.null(i)) {
        return (i)
}
        data<- x$get()
        i<- solve(data, ...)
        x$setinv(i)
        i
}
