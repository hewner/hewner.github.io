runFeedbackFunction <- function(f, timesToRun, initialValue) {
  data <- rep(0,timesToRun) # 0 repeated timesToRun times
  data[1] <- initialValue
  for(current in 2:timesToRun) {
    data[current] <- f(data[current - 1])
  }
  data
}

repeatedlyMultiply <- function(z) {
  
  z*complex(real=.9,imaginary=.3);
  #z^2 - complex(real=.1,imaginary=.1)
}

generateDiagramOfComplexFunction <- function() {

  initialPoint = complex(real=.9,imaginary=.435);
  data = runFeedbackFunction(repeatedlyMultiply, 100, initialPoint)
  plot(Re(data), Im(data),type="l",col="blue")
  
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

generateJulia <- function() {
  # generate some complex numbers in the range -1.5 to 15
  realValues <- seq(-1.5,1.5,length.out=400)
  imaginaryValues <- seq(-1.5,1.5,length.out=400)
  initialPoints <- generateComplexPoints(realRange=realValues,imaginaryRange=imaginaryValues)

  current <- initialPoints
  offset <- complex(real=-0.09375,imaginary=-0.8268743)
  for(i in 1:50) {
    current <- current**2 + offset;
  }
  results <- initialPoints[Mod(current) < 2]
  plot(Re(results), Im(results))
}

generateJuliaFancy <- function() {
  realValues <- seq(-1.5,1.5,length.out=400)
  imaginaryValues <- seq(-1.5,1.5,length.out=400)
  initialPoints <- generateComplexPoints(realRange=realValues,imaginaryRange=imaginaryValues)

  timeToGetLarge <- rep(0, length(initialPoints))
  offset <- complex(real=-0.09375,imaginary=-0.8268743)
  current <- initialPoints
  for(i in 1:50) {
    current <- current**2 + offset;
    # in this one keep track of how many steps it takes before the points get
    # larger that 2
    timeToGetLarge <- timeToGetLarge + ifelse(Mod(current) < 2, 1, 0)
  }
  image(realValues,imaginaryValues,timeToGetLarge, col=c(rainbow(49), "black"))
}

generateDiagramOfComplexFunction()