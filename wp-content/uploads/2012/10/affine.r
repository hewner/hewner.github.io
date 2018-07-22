generateAffineChaosGame <- function()
{
  numberToPlot <- 20000 
  startX = 0
  startY = 0
  Xs = rep(0,numberToPlot)
  Ys = rep(0,numberToPlot)
  Xs[1] = startX
  Ys[1] = startY
  scaleDown = 1/sqrt(2)
  
  transform1 <- function(x,y) {
    newX <- scaleDown*(cos(pi/4)*x - sin(pi/4)*y) + 0
    newY <- scaleDown*(sin(pi/4)*x + cos(pi/4)*y) + 0
    c(newX, newY)
  }
  
  transform2 <- function(x,y) {
    newX <- scaleDown*(cos(3*pi/4)*x - sin(3*pi/4)*y) + 1
    newY <- scaleDown*(sin(3*pi/4)*x + cos(3*pi/4)*y) + 0
    c(newX, newY)
  }
  
  allTransforms <- c(transform1, transform2)
  
  for (i in 2:numberToPlot) {

    randomTransform <- sample(allTransforms, 1)[[1]]
    prev = i - 1
    transformedPoint <- randomTransform(Xs[prev], Ys[prev])
    Xs[i] <- transformedPoint[1]
    Ys[i] <- transformedPoint[2]
  } 
  
  plot(Xs, Ys, main="Affine Transform",
       xlab="X", ylab="Y", pch=".", col=rainbow(length(Xs), alpha=.2))
  # shows how the points jump around
  #lines(HenonX[90:110], HenonY[90:110])
  
  
}

generateEvenlySpacedPoints <- function(xRange, yRange) {
  result <- NULL
  xVals <- rep(xRange, times=length(yRange))
  yVals <- rep(yRange, each=(length(xRange)))
  result <- c(xVals,yVals)
  dim(result) <- c(length(xRange)*length(yRange),2)
  return (result)
}

generateAffineNoChaos <- function()
{

  xRange <- seq(-1,1,length.out=10)
  yRange <- seq(-1,1,length.out=10)
  initialPoints <- generateEvenlySpacedPoints(xRange, yRange)
  
  Xs = initialPoints[,1]
  Ys = initialPoints[,2]

  scaleDown = 1/sqrt(2)
  
  transform1 <- function(x,y) {
    c(newX, newY)
  }
  
  transform2 <- function(x,y) {
    c(newX, newY)
  }
  
  timesToTransform <- 7
  for(i in 1:timesToTransform) {

    transform1Xs <- scaleDown*(cos(pi/4)*Xs - sin(pi/4)*Ys) + 0
    transform1Ys <- scaleDown*(sin(pi/4)*Xs + cos(pi/4)*Ys) + 0
    transform2Xs <- scaleDown*(cos(3*pi/4)*Xs - sin(3*pi/4)*Ys) + 1
    transform2Ys <- scaleDown*(sin(3*pi/4)*Xs + cos(3*pi/4)*Ys) + 0
    newLength <- 2*length(Xs)
    result <- array(c(transform1Xs, transform2Xs, transform1Ys, transform2Ys), c(newLength,2))
    if(newLength > 10000) {
      randomPoints <- sample(1:newLength, 10000)
      result <- result[randomPoints,]
    }
#    Xs <- c(transform1Xs, transform2Xs)
#    Ys <- c(transform1Ys, transform2Ys)

    Xs <- result[,1]
    Ys <- result[,2]
  }
    
  plot(Xs, Ys, main="Test 1",
       xlab="X", ylab="Y", pch=20, col=rainbow(length(Xs), alpha=1))
  # shows how the points jump around
  #lines(HenonX[90:110], HenonY[90:110])
  
  
}

generateAffineNoChaos2 <- function()
{
  
  xRange <- seq(-1,1,length.out=10)
  yRange <- seq(-1,1,length.out=10)
  initialPoints <- generateEvenlySpacedPoints(xRange, yRange)
  
  data = data.frame(x=initialPoints[,1], y=initialPoints[,2], initialx=initialPoints[,1], initialy=initialPoints[,2])
  
  scaleDown = 1/sqrt(2)
    
  timesToTransform <- 40
  for(i in 1:timesToTransform) {
    
    transform1Xs <- scaleDown*(cos(pi/4)*data$x - sin(pi/4)*data$y) + 0
    transform1Ys <- scaleDown*(sin(pi/4)*data$x + cos(pi/4)*data$y) + 0
    transform2Xs <- scaleDown*(cos(3*pi/4)*data$x - sin(3*pi/4)*data$y) + 1
    transform2Ys <- scaleDown*(sin(3*pi/4)*data$x + cos(3*pi/4)*data$y) + 0
    newLength <- 2*length(data$x)
    data <- data.frame(x=c(transform1Xs, transform2Xs), 
                           y=c(transform1Ys, transform2Ys), 
                       initialx=data$initialx, initialy=data$initialy, 
                       color = c(rep(3,length(transform1Xs)), rep(4,length(transform2Xs))))
    if(newLength > 10000) {
      randomPoints <- sample(1:newLength, 10000)
      data <- data[randomPoints,]
    }
    #    Xs <- c(transform1Xs, transform2Xs)
    #    Ys <- c(transform1Ys, transform2Ys)
  }
  print(data$color)
  plot(data$x, data$y, main="Test X",
       xlab="X", ylab="Y", pch=20, col=data$color)
  # shows how the points jump around
  #lines(HenonX[90:110], HenonY[90:110])
  
  
}