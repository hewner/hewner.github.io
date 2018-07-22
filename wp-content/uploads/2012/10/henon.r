generateHenon <- function()
{
  numberToPlot <- 10000 
  startX = 0.000001
  startY = 0
  HenonX = rep(0,numberToPlot)
  HenonY = rep(0,numberToPlot)
  HenonX[1] = startX
  HenonY[1] = startY
  a = 1.4
  b = 0.3
  for (i in 2:numberToPlot) {
    prev = i - 1 
    HenonX[i] = HenonY[prev] + 1 - a*HenonX[prev]^2
    HenonY[i] = b*HenonX[prev]
  } 

  plot(HenonX, HenonY, main="Henon Attractor",
       xlab="X", ylab="Y", pch=".")
  # shows how the points jump around
  #lines(HenonX[90:130], HenonY[90:130])
  
  
  }


generateHenon()
