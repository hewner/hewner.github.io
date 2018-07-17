---
author: phewner
comments: true
date: 2011-07-26 03:27:54+00:00
layout: post
link: http://hewner.com/2011/07/25/ghp-fractals-class-summary/
slug: ghp-fractals-class-summary
title: GHP Fractals Class Summary
wordpress_id: 509
categories:
- active learning
- student feedback
- Teaching
---

Ok, so my good intentions to blog weekly about my teaching at GHP didn't quite happen.  It really is amazing exactly how intense teaching at GHP is, at least for your first year.  Between majors, minors, all the various side projects, helping students after hours, and then prepping classes you are basically working every minute 7am-11pm (or later).  After a while, it got to where I started daydreaming about taking naps.  But I really don't want to sound like I'm complaining...GHP is definitely one of the coolest teaching things I've ever done.  But not a lot of blogging time.

So, here's what I did in my fractals class:

<!-- more -->





  * _Day 1:_  An introduction to the characteristics of fractals, a discussion of the Sierpinski gasket (including informal arguments for 0 area and infinite perimeter), an an introductory argument about the idea of fractional dimension using self similarity to compare what happens when you scale up a gasket, square, triangle, and cube.  I felt like my 0 area argument could have used a little work, and I should have included an example of scaling up a triangle with an empty space in it into the mix.  You can see [my slides](http://hewner.com/wp-content/uploads/2011/07/Fractals-lecture1.pptx).  I also introduced them to building fractals in [Apophysis](http://apophysis.org/) and we built an example gasket.



  * _Day 2:_  We played around with a [program I had written](http://hewner.com/wp-content/uploads/2011/07/mcrm-code.zip) to help understand Apophysis.  The program allowed you to see the creation of Fractals as part of the action of a Multiple Reduction Copy Machine (a la [Fractals in the Classroom](http://www.amazon.com/Fractals-Classroom-Part-Introduction-Chaos) which is my favorite fractal book).  They could enter the same affine transformations they built in Apophysis and watch the individual reductions step by step.  We also checked out the reductions that produced the Sierpinski Gasket and the Dragon Fractal.  I went through the Gasket closely, trying to explain how the picture of the gasket itself was invariant under the 3 transformations even though individual points would move within the set.   I think the students did get the idea that you could the "fractal" to be the set of points invariant under that particular transformation set.  Then we spent the rest of the time entering individual fractals students like from Apophysis into the program and seeing how they were created.  I would really like to expand this to make things even more clear with additions to the program, but obviously programming time is limited here at GHP.  I also wish I had guided the students to think of the idea of invariant sets themselves somehow...



  * _Day 3:_  We introduced the Cantor set.  I had the students do an exercise where they attempted to determine if an individual point was within the Cantor Set.  I used that as a springboard to talk about trinary decimals, though I think this challenge was a bit hard for some students and they felt disengaged.  The we talked about the fact that there are no contiguous points in the Cantor set.  We talked about how the Cantor set can be thought of as having an invariant transform.  Then, since we had a little time left at the end, we went though the Koch snowflake and talked about its area and perimeter.



  * _Day 4:_  I started the day asking the students to explain the idea of an invarient as a writing assignment.  The results were so-so.  Students seemed to get the idea of matrix transformations, but generally did not at least *say* the right stuff about what an invariant is.  This class was where I really wanted to start talking about the idea of Fractal Dimension.  My first goal was to get the students away from the idea of dimension as a number of parameters, so I thought I would talk about the idea of cardinalties of infinity.  This was somewhat complicated by the fact that two of the other teachers includes cardinalties of infinity as one of their main topics.  I didn't want to step on anybody's toes, so I opted to only do part of the story.  What I chose to do was only talk about the fact that natural numbers have the same cardinality as the rationals, but not go into the real line.  In retrospect, this was a dumb compromise: I should have either gone for it or not.  

I talked about about why dimension is important and why it's not obvious.  Then I had some fun with the students hamming it up with a funny extension of Hilbert's Hotel.  In this version, you've got a full hotel then one new person arrives.  Then a bus pulls up with an infinite number of people.  Then, there's a crash on the highway and an infinite number of infinite busses show up (i.e. that rationals).  Later, I heard a further extension where you can do the reals by talking about guests with infinitely long names and then there's a secret guest the letter of who's name is the opposite...blah blah blah.  I didn't do that one but its cool.

After that, I showed them some steps for a space filling curve and asked them to try and draw a few steps (without revealing the result).  You can see slides I used for this and the next lecture [here](http://hewner.com/wp-content/uploads/2011/07/Fractal4-FractalDimension1.pptx).




  * _Day 5:_Here's where we got into the meat of Fractal dimension.  I showed them space filling curves.  Then I talked about why as simplistic space filling curve would not work.  The finally I got to the business of self-similarity dimension, gave them the formula, and did a few examples in class.

In retrospect, it seems obvious that I could have had the students work through a few examples of Fractal dimension as a worksheet or something.  Or honestly, they could have derived the idea of self-similarity dimension themselves.  Man!  Now I am very regretful about this class.  Next year!




  * _Day 6:_  I wanted to finish Fractal dimension off by introducing 2 new kinds of dimension - box counting and topological dimension.  I had spent considerable amounts of time building an example for box counting with the coast of great Britian...but the short of it was it didn't work.  I think maybe it just didn't have enough detail.  I'm not sure it really helped folks anyway.

I went though topological dimension using ball covering.  My examples felt a little shaky initially, but eventually was able to explain how you need 3 overlaps to cover a plane and 4 to cover a volume (key point - where the 2/3 circles cross).  But I think the students were lost and I didn't have any exercises to help solidify it for them.  

I did manage to find a really cool set of fractal software, including [a good one for box counting dimension](http://classes.yale.edu/fractals/Software/swingboxdim.html).  I showed the students but I think by this point they were a bit zoned out.  Next time I'll try and expand on it more, asking students to predict the boxes and figure out what it should mean.




  * _Day 7:_  After all our hard work, I wanted to give the students a little reward so I scheduled some computer time.  I introduced them to Context Free and gave them a challenge to build certain shapes.  You can see the details [here](http://hewner.com/wp-content/uploads/2011/07/context_free_challenge.pdf).  I think the idea was sound but the challenges did not moves slow enough - students needed a lot of help and really couldn't get to explore context free.

I think this was my greatest point of frustration with the fractal class.  Things did look up once we got to Chaos.




  * _Day 8:_  Before this class, students had the opportunity to switch classes.  I lost about 3...which surprised me considering how far under my game I felt.  I collected student feedback and it was on the whole positive, with only a few students saying they felt lost.  But it was significantly less positive than my Theory of Computation course.

I introduced the idea of feedback systems, which in retrospect I think I ought to have gotten to on day one.  Then I gave an example feedback system with ninjas.  I then showed that system in excel[FractalFeedbackSystems](http://hewner.com/wp-content/uploads/2011/07/FractalFeedbackSystems.xlsx), and demonstrated how the feedback system produced chaotic behavior.  Then I ended the class with some questions I had to students write up...many of them got it right and that improved my confidence that we were headed in the right direction.  You can see my [powerpoint](http://hewner.com/wp-content/uploads/2011/07/Fractals-Feedback-Systems.pptx) and [excel](http://hewner.com/wp-content/uploads/2011/07/FractalFeedbackSystems.xlsx).

I had a little extra time, so I went though the dough example and talked about shifting.




  * _Day 9:_  I had the bright idea to take the class into the computer lab where were they could explore.  I also took the opportunity to move things into the complex plane.  I showed students how model complex multiplication in excel (see my stuff [here](http://hewner.com/wp-content/uploads/2011/07/MikeJuliaSetExploration.xlsx)), and they saw that it produced a spiral when you did repeated applications of the same multiplication.  I used that as a jumping off point to talk about how multiplying complex numbers is equivalent to multiplying magnitudes and adding arguments (Dennis showed me the easy proof of this...just convert the fractal to polar form using the pythag theorm, multiply, and check your trig identities).  Then we explored a basic z^2 squaring system.  We explored spiraling in and spiraling out, and I challenged the students to find something that made a circle.

Dennis later showed me you could actually get even fancier with this.  That unit circle contains both attractive and repulsive fixed points (0 and 1) and also cycles of arbitrary complexity.  Rational powers of pi cycle, as I recall...but irrational ones never repeat.  We didn't get too into that in my class, but it is indeed awesome.

Then we moved on to a slightly more complex system z^2 + c and saw a non-zero attractive point.  We looked up the fixed point in wolfram alpha (though I think maybe we ought to have derived it by hand) That was where I left it.




  * _Day 10:_  On this day we took our explorations a bit further and I introduced the Julia and Mandelbrot sets.  Using excel as my jumping off point, I talked about how some points converged and some points moved off to infinity.  Then I showed the pictures and explained what was going on.  I was ok with this but in retrospect I think we moved a little fast here and people lost sight of the relationship between the excel stuff we had done and the fractal pictures.  I think a problem was that excel wasn't sophisticated enough to actually render the julia sets so there was still this magical interplay where the secret number got entered into Chaos Pro and math went out the window.

Although I very much liked what Excel was able to do for me, I really need a stronger base to let me students be smarter about their explorations and go all the way there.

On this day I also noted that I could get a lot of mileage out of asking students to summarize the previous day's work.  Based on student's faces, I think reviewing what we had discussed before really got them to recall and made people more engaged.  I also think this was an easier question that was able to help struggling students feel more on top of things.



  * _Day 11:_  I had an activity where I asked students to pick a connected Julia set, characterize whether what happened to points in it (that is, cycle attractive fixed point etc) find the fixed points and classify them.  This was where I discovered that students did not understand the relationship between the excel and the pretty pictures.  People also continuously had trouble with c and z0.  I think I should have built students up to this more by having them classify more stuff before this.  But I think the idea of this activity was a good one, even if in actual instantiation is was a bit dicey.



  * _Day 12:_  Having gone as far as I wanted to with the Mandelbrot, I decided to go back to Chaos discuss bifurcations and maybe get to the Strange Attractors.  Stage 1 was letting the students experiment with graphical iteration - something that I had avoided, but in retrospect felt a little silly about avoiding.  Though I think that maybe this was what I should have done first, because once we hunkered down in 2-D reals things like fixed points, attractive fixed points, and other stuff students had been having trouble with became painfully obvious.  My only regret is that because we did it last, it was sort of the anticlimax rather than the mysterious introduction.

Anywoo, I explained graphical iteration and then we did a couple examples as a varied for the function ax(1 - x).  

I was able to use [this software from the yale library](http://classes.yale.edu/fractals/Software/FracDyn.html) which was extremely illuminating.  In particular, I was able to understand and explain how the multiple concatenations of the functions could explain the existence 2 cycles and 4 cycles.

We ended with the bifurcation diagram, and a discussion of the Feigenbaum point and constant.



  * 
_Day 13:_  We reviewed the meaning of the bifurcation diagram (again, I was amazed by how much folks forgot) and then I moved on to the 2 dimension system of the Henon map.  I had written a program in R to show some details of the Henon Map - proving that it was chaotic and showing the bifurcation diagram for it.  I also talked about how you could think of the Henon attractor as having 3 steps and showed the diagram from the book that suggests it is invariant.

I also talked a bit about the Lorenz attractor.  



  * 
_Day 14:_  As is somewhat GHP tradition, we talked about how the course went.  I collected feedback ([you can see the details here](https://spreadsheets.google.com/spreadsheet/pub?hl=en_US&hl=en_US&key=0Ajy7KJkG2NnQdHlVUmYtNnJwd3ZSa0dWZ3B0YWpqbnc&output=html)).  And otherwise I talked about a few other fractal types they hadn't seen, showed them a few fractals books if they wanted to explore on their own further, and let them play with fractal software for the rest of the class.  Although there was not a need to cover a ton of content, I felt students got bored too fast - this day could have used something more



