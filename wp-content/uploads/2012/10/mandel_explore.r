runFeedbackFunction <- function(f, timesToRun, initialValue) {
  data <- rep(0,timesToRun) # 0 repeated timesToRun times
  data[1] <- initialValue
  for(current in 2:timesToRun) {
    data[current] <- f(data[current - 1])
  }
  data
}

c <- complex(real = -.51, imaginary=.58)
juliaFunc <- function(z) {
  z = z^2 + c
}

z0 = complex(real=.73, imaginary=-.32)
# run the function 1000 times
data = runFeedbackFunction(f=juliaFunc, timesToRun=1000, initialValue=z0)
# take a look at the last couple points
print(data[975:1000])