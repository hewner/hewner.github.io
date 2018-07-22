generateMobiusChaosGame <- function()
{
  numberToPlot <- 50000 
  startPoint = complex(real=-1, imaginary=-.1)
  points = rep(0,numberToPlot)
  points[1] = startPoint
  
  ta = complex(real=2, imaginary=1) #complex(real = 1.87, imaginary=.1)
  tb = complex(real=2, imaginary=.1) # complex(real = 1.87, imaginary=-.1)

  #ta = complex(real = 1.87, imaginary=.1)
 # tb = complex(real = 1.87, imaginary=-.1)
  
  
  i = complex(imaginary=1)
  tab = (ta*tb - sqrt((-1*ta*tb)^2 - 4*(ta^2 + tb^2)))/2
  z0 = ((tab - 2)*tb)/(tb*tab - 2*ta + 2*i*tab)
  a1 = ta/2
  b1 = (ta*tab - 2*tb + 4*i)/((2*tab + 4)*z0)
  c1 = (ta*tab - 2*tb - 4*i)*z0/(2*tab - 4)
  d1 = ta/2
  
  a2 = (tb - 2*i)/2
  b2 = tb/2
  c2 = tb/2
  d2 = (tb + 2*i)/2

# makes the a-gasket
#  a1 = 1
#  b1 = 0
#  c1 = -2*i
#  d1 = 1
  
#  a2 = 1 - i
#  b2 = 1
#  c2 = 1
#  d2 =  1+i
  
  
  
  transform1 <- function(z) {
    (a1*z + b1)/(c1*z + d1)
  }
  
  transform1inv <- function(z) {
    (d1*z - b1)/(-c1*z + a1)
  }
  
  transform2 <- function(z) {
    (a2*z + b2)/(c2*z + d2)
  }
  
  transform2inv <- function(z) {
    (d2*z - b2)/(-c2*z + a2)
  }
    
  allTransforms <- c(transform1,transform1inv, transform2, transform2inv)
  
  for (i in 2:numberToPlot) {

    randomTransform <- sample(allTransforms, 1)[[1]]
    prev = i - 1
    points[i] <- randomTransform(points[prev])
  } 
  
  plot(Re(points), Im(points), main="Mobius Chaos2",
      pch=".", col=rainbow(length(points), alpha=1))
  # shows how the points jump around
  #lines(HenonX[90:110], HenonY[90:110])
  
  
}


generateComplexPoints <- function(realRange, imaginaryRange) {
  result <- NULL
  for(i in imaginaryRange) {
    imag <- complex(imaginary = i)
    result <- c(result, realRange + imag)
  }
  dim(result) <- c(length(realRange), length(imaginaryRange))
  return (result)
}

generateMobiusNoChaos <- function()
{
  ta = complex(real=2) #complex(real = 1.87, imaginary=.1)
  tb = complex(real=2) # complex(real = 1.87, imaginary=-.1)
  
#  ta = complex(real = 1.87, imaginary=.1)
#  tb = complex(real = 1.87, imaginary=-.1)
  
  
  i = complex(imaginary=1)
  tab = (ta*tb - sqrt((-1*ta*tb)^2 - 4*(ta^2 + tb^2)))/2
  z0 = ((tab - 2)*tb)/(tb*tab - 2*ta + 2*i*tab)
  a1 = ta/2
  b1 = (ta*tab - 2*tb + 4*i)/((2*tab + 4)*z0)
  c1 = (ta*tab - 2*tb - 4*i)*z0/(2*tab - 4)
  d1 = ta/2
  
  a2 = (tb - 2*i)/2
  b2 = tb/2
  c2 = tb/2
  d2 = (tb + 2*i)/2
  
  # makes the a-gasket
  #  a1 = 1
  #  b1 = 0
  #  c1 = -2*i
  #  d1 = 1
  
  #  a2 = 1 - i
  #  b2 = 1
  #  c2 = 1
  #  d2 =  1+i
  
  
  
  transform1 <- function(z) {
    (a1*z + b1)/(c1*z + d1)
  }
  
  transform1inv <- function(z) {
    (d1*z - b1)/(-c1*z + a1)
  }
  
  transform2 <- function(z) {
    (a2*z + b2)/(c2*z + d2)
  }
  
  transform2inv <- function(z) {
    (d2*z - b2)/(-c2*z + a2)
  }
  
  allTransforms <- c(transform1,transform2, transform1inv, transform2inv)

  realValues <- seq(-2,2,length.out=10)
  imaginaryValues <- seq(-2,2,length.out=10)
  points <- generateComplexPoints(realRange=realValues,imaginaryRange=imaginaryValues)
  points <- c(1)
  for (i in 1:9) {
    t1result = transform1(points)
    t2result = transform2(points)
    t1invresult = transform1inv(points)
    t2invresult = transform2inv(points)
    
    points = c(t1result,t2result,t1invresult,t2invresult)
  } 
  
  plot(Re(points), Im(points), main="Mobius Chaos4",
       pch=".", col=4)
  
  # shows how the points jump around
  #lines(HenonX[90:110], HenonY[90:110])
  
  
}

mobPlay <- function(z)
{
  1/Conj(z)
}