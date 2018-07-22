generateEvenlySpacedPoints <- function(xRange, yRange) {
  result <- NULL
  xVals <- rep(xRange, times=length(yRange))
  yVals <- rep(yRange, each=(length(xRange)))
  result <- c(xVals,yVals)
  dim(result) <- c(length(xRange)*length(yRange),2)
  return (result)
}

transformTester <- function()
{
  # generate X and Y coordinates of a triangle
  # don't worry about this
  startingXs <- seq(0,1,length.out=200)
  bottomsideYs <- rep(0,200)
  leftsideYs <- 2*startingXs[startingXs <= .5]
  rightsideYs <- 1 - 2*startingXs[startingXs > .5] + 1
  Xs <- rep(startingXs, 2)
  Ys <- c(bottomsideYs, leftsideYs, rightsideYs)

  plot(Xs,Ys)
  
  # this transform is completely wrong
  transform1Xs <- (1/3)*Xs + .2 
  transform1Ys <- (-1/3)*Ys + .7 
  
  plot(c(Xs,transform1Xs), c(Ys,transform1Ys), col=c(rep(2,length(Xs)),rep(3,length(transform1Xs))))
  
  
  
  
}
generateAffineNoChaos <- function()
{
  
  xRange <- seq(-1,1,length.out=10)
  yRange <- seq(-1,1,length.out=10)
  #generates evenly spaced points in the range -1 to 1
  initialPoints <- generateEvenlySpacedPoints(xRange, yRange)
  
  Xs = initialPoints[,1]
  Ys = initialPoints[,2]
    
  timesToTransform <- 14
  
  for(i in 1:timesToTransform) {

    if(i < 4) {
      #draw the 1st couple graphs so we can see what's happening
      plot(Xs, Ys, main=paste("Points at Transform ", i - 1) ,
           xlab="X", ylab="Y", pch=19)
    }
    
    # note that even though these seem to have sin and cos, it's sine and cosine of constants
    # these are just ordinary affine transforms
    transform1Xs <- (1/sqrt(2))*cos(pi/4)*Xs - (1/sqrt(2))*sin(pi/4)*Ys + 0
    transform1Ys <- (1/sqrt(2))*sin(pi/4)*Xs + (1/sqrt(2))*cos(pi/4)*Ys + 0
    transform2Xs <- (1/sqrt(2))*cos(3*pi/4)*Xs - (1/sqrt(2))*sin(3*pi/4)*Ys + 1
    transform2Ys <- (1/sqrt(2))*sin(3*pi/4)*Xs + (1/sqrt(2))*cos(3*pi/4)*Ys + 0
    
    newLength <- 2*length(Xs) #this should be 3 times length(Xs) once you add a 3rd transform
    # add all your result transforms to this list
    result <- array(c(transform1Xs, transform2Xs,
                      transform1Ys, transform2Ys), c(newLength,2))
        
    
    # this just removes random points if it gets over 10000
    # otherwise stuff really starts going slow
    # you don't need to edit this
    if(newLength > 10000) {
      randomPoints <- sample(1:newLength, 10000)
      result <- result[randomPoints,]
    }
    #    Xs <- c(transform1Xs, transform2Xs)
    #    Ys <- c(transform1Ys, transform2Ys)
    Xs <- result[,1]
    Ys <- result[,2]
  }
  
  plot(Xs, Ys, main="My Fractal",
       xlab="X", ylab="Y", pch=20, col=rainbow(length(Xs), alpha=1))
  # shows how the points jump around
  #lines(HenonX[90:110], HenonY[90:110])
   
}