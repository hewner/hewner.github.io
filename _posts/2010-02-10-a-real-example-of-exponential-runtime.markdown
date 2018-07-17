---
author: phewner
comments: true
date: 2010-02-10 03:17:08+00:00
layout: post
link: http://hewner.com/2010/02/09/a-real-example-of-exponential-runtime/
slug: a-real-example-of-exponential-runtime
title: A Real Example Of Exponential Runtime
wordpress_id: 142
categories:
- Worklogs
---

[![](http://technofetish.net/buffaloblog/wp-content/uploads/2010/02/exampleGraph.png)](http://technofetish.net/buffaloblog/wp-content/uploads/2010/02/exampleGraph.png)

With the help of the textbook associated with the graph library I was using, I was able to build some graphs that require exponential runtime.  Actually, factorial runtime which is **slow**, as my laptop's second processor can attest to at this moment.  The key to defeating the algorithm was to come up with a graph that was Biconnected but had no Hamiltonian Cycle.  Once I had that, it was easy enough to to attach it to arbitrary-size complete graphs.  The algorithm always checks the edges in order, so having this "unhamiltonianable" appendage stuck onto the end forced it to try every permutation of the first n - 7 vertices.

This may not be the most elegant solution ever, but it is a bit gratifying to know I haven't completely lost everything I learned in algorithms class.

An for those who are curious, here, is an honest-to-goodness graph of an exponential algorithm sucking for real.  Not quite as smooth as I would like, but then again I don't think I'll be able to get n = 20 even if I let this thing run overnight.

[![](http://technofetish.net/buffaloblog/wp-content/uploads/2010/02/realExponential1.png)](http://technofetish.net/buffaloblog/wp-content/uploads/2010/02/realExponential1.png)

