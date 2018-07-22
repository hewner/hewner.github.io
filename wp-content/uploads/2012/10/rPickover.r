
doStrangeAttractor <- function() {
  a <- -0.5845918
  b <- 3.379879
  c <- .335145
  d <- .544728
  pointsToPlot <- 100000
  
  
  x <- .1
  y <- .1
  allXs = rep(0,pointsToPlot)
  allYs = rep(0,pointsToPlot)
  for(i in 1:pointsToPlot) {
    newx <- sin(y*b) + c*sin(x*b)
    newy <- sin(x*a) + d*sin(y*a)
    x <- newx
    y <- newy
    allXs[i] <- x
    allYs[i] <- y
  }
  
  plot(allXs, allYs, pch='.')
  lines(allXs[100:110], allYs[100:110])
}

doStrangeAttractor2 <- function() {
  
  #good values tend to be:
  # -3 < a,b > 3
  # .5 < c,d > 1.5
  a <- -0.966918
  b <- 2.879879
  c <- -.765145
  d <- .744728
  pointsToPlot <- 100000
  
  
  x <- .1
  y <- .1
  allXs = rep(0,pointsToPlot)
  allYs = rep(0,pointsToPlot)
  for(i in 1:pointsToPlot) {
    newx <- sin(y*b) + sin(sin(x*b)) + sin(sin(sin(x*b)))
    newy <- sin(x*a) + sin(sin(y*a)) + sin(sin(sin(y*c)))
    x <- newx
    y <- newy
    allXs[i] <- x
    allYs[i] <- y
  }
  
  plot(allXs, allYs, pch=".", col=rgb(red=1,green=0,blue=0.1, alpha=1))
  #lines(allXs[100:110], allYs[100:110])
}

doStrangeAttractor()