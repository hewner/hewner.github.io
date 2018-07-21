---
author: phewner
comments: true
date: 2012-10-09 19:53:46+00:00
layout: post
permalink: /2012/10/09/making-simple-fractals-in-r/
slug: making-simple-fractals-in-r
title: Making Simple Fractals in R
wordpress_id: 636
categories:
- Programming Stuff
- Teaching
---

In my GHP Fractals class this summer, I opted to write my sample programs in R.  I selected R because it has very nice graphing libraries and built-in complex numbers.  Overall, I was pleased with R; it definitely let me built some incredibly straightforward fractal code.  It's not as fast or pretty as other choices might have been, but it highlighted the underlying math which was most important to me.

[caption id="attachment_640" align="aligncenter" width="550" caption="King's Dream Strange Attractor  (parameters from Chaos In Wonderland)"][![](http://hewner.com/wp-content/uploads/2012/07/StrangeAttractorKingsDream.png)](http://hewner.com/wp-content/uploads/2012/07/StrangeAttractorKingsDream.png)[/caption].  

You can see an example on the left, rendered by R.  The source of this particular fractal comes from Clifford Pickover's [Chaos in Wonderland](http://www.amazon.com/Chaos-Wonderland-Visual-Adventures-Fractal).  The graph is made by repeatedly iterating a simple function of x and y based on sine and cosine.

You can see the code in R here:
[sourcecode language="R"]
  a <- -0.966918
  b <- 2.879879
  c <- .765145
  d <- .744728
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
  
  plot(allXs, allYs, pch=".", col="red",
       main="Strange Attractor: King's Dream")
[/sourcecode]

Here's a few more pretty pictures:

[gallery link="file"]
