runFeedbackFunction <- function(f, timesToRun, initialValue) {
  data <- rep(0,timesToRun) # 0 repeated timesToRun times
  data[1] <- initialValue
  for(current in 2:timesToRun) {
    data[current] <- f(data[current - 1])
  }
  data
}

makeBifricationDiagram <- function() {
  
  #don't plot any points, just set up the graph size
  # x ranges from 0 to 4
  # y ranges for 0 to 1
  plot(0, xlim=c(0,4),ylim=c(0,1), type="n")
  
  for(a in seq(0,4,by=.005)) {
    currentFunction <- function(x) { a*x*(1 - x) }
    data <- runFeedbackFunction(currentFunction, 250, .1)
    
    # plot the 100-250th iterations of the function
    # we don't plot the first 100 to give it time to enter a cycle if it's going to
    points(rep(a,151), data[100:250],pch=".")
  }
}

makeBifricationDiagram2 <- function() {
  
  #don't plot any points, just set up the graph size
  # x ranges from 0 to 4
  # y ranges for 0 to 1
  plot(0, xlim=c(1.72,2.3),ylim=c(0,1), type="n")
  
  for(a in seq(1.72,2.3,by=.001)) {
    currentFunction <- function(x) { a*x*x*sin(pi*x) }
    data <- runFeedbackFunction(currentFunction, 250, .6)
    
    # plot the 100-250th iterations of the function
    # we don't plot the first 100 to give it time to enter a cycle if it's going to
    points(rep(a,151), data[100:250],pch=".")
  }
}

makeBifricationDiagram3 <- function() {
  
  #don't plot any points, just set up the graph size
  # x ranges from 0 to 4
  # y ranges for 0 to 1
  #plot(0, xlim=c(1.5,3),ylim=c(0,1.5), type="n")
  plot(0, xlim=c(2,2.7),ylim=c(0,1.5), type="n")
  
  for(a in seq(1.5,3,by=.002)) {
    currentFunction <- function(x) { x + a*x*(1 - x) }
    data <- runFeedbackFunction(currentFunction, 300, .5)
    
    # plot the 100-250th iterations of the function
    # we don't plot the first 100 to give it time to enter a cycle if it's going to
    points(rep(a,176), data[125:300],pch=".")
  }
}

makeBifricationDiagramHeron <- function() {
  
  #don't plot any points, just set up the graph size
  # x ranges from 0 to 4
  # y ranges for 0 to 1
  plot(0, xlim=c(0,1.5),ylim=c(-1.5, 1.5), type="n",
       main = "Bifurcation Diagram for Henon Attractor"
       )

  HenonX = rep(0,300)
  HenonY = rep(0,300)
  b = 0.3
  
  for(a in seq(0,1.5,by=.001)) {
  
    HenonX[1] = 0
    HenonY[1] = 0
    for (i in 2:300) {
      prev = i - 1 
      HenonX[i] = HenonY[prev] + 1 - a*HenonX[prev]^2
      HenonY[i] = b*HenonX[prev]
    }
    # plot the 100-250th iterations of the function
    # we don't plot the first 100 to give it time to enter a cycle if it's going to
    points(rep(a,176), HenonX[125:300],pch=".")
  }
}
