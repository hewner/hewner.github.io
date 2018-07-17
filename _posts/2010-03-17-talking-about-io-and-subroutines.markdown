---
author: phewner
comments: true
date: 2010-03-17 04:12:31+00:00
layout: post
link: http://hewner.com/2010/03/16/talking-about-io-and-subroutines/
slug: talking-about-io-and-subroutines
title: Talking about IO and Subroutines
wordpress_id: 189
categories:
- active learning
- student feedback
- Teaching
---

I'm staying home sick today so I've had time post a few things that have been in my blogging backlog.

So a few weeks ago I gave a talk about IO and subroutines in the introductory architecture course I was observing.  This is the sort of course that CS survivors have nightmares about.  The course consists of:



	
  1. lecture - 90 minutes of agony in which the professor describes breathlessly how **exciting** interrupt driven IO is and you consider stabbing yourself in the eye with a pencil

	
  2. lab - a frenzied rush to finish the lab assignment and get out before the TAs get in lecturing mode and you have to hear about interrupt driven IO again

	
  3. and homework - in which you realize you don't understand interrupt driven IO after all at 4am in a darkened lab attempting to understand a textbook that seems to have been translated from the original Latvian by babelfish


Now the regular professor is a great speaker who can make even the most mind-freezingly boring topic seem hilarious and interesting.  Seriously, this guy went on for _15 minutes on the PDP-8_ and while it was going on I completely believed it was exciting and extremely relevant to my life.   He also has a grizzled war-vet kinda aura about him that suggests he takes no crap; if he was my professor I would live in mortal fear that if I don't learn assembly he would one day swoop down upon me like batman and leave my bloodied body hanging from the Klaus rafters as a warning to the other slackers.

But education psychology research has long shown that funny lectures and the occasional beating can only get you so far, especially in this modern age where every laptop provides an infinite supply of funny cats. More to the point, expecting students to remember 8 different details about the way memory mapped IO and subroutines are implemented in assembly is just asking for sadness at exam time unless you've built in a little bit of practice and reinforcement.

What was most gratifying about the lecture was the fact that students really seemed to enjoy the activity I had them do.  I was pretty concerned that since their regular instructor basically runs a straight-up lecture, they would be resistant to doing anything.  Apparently there were a few slackers in the back not working but in general people seemed to do the activity, talk about what sounded like the right stuff after they did the activity, and rate the activity highly on my student feedback forms.  Look here if you're curious on the feedback I got [http://bit.ly/aiElj0](http://bit.ly/aiElj0).

I chose the activities I did (fill-in code blocks and finding bugs in existing code), partly because they were easy, partly because I think students think of coding as a very authentic activity, and partly because I could have specific right answers to hold students accountable and give them feedback.  I worry a bit that if I were to teach several consecutive lectures, keeping activities like these fresh could be a problem.

What worked less well was my complex datapath handout.  I upped the ante on myself here, because this was something not really covered in the professor's initial lecture notes.  Even the book didn't really explain this very well: I had to go in and look at a _really obtuse and scary_ state diagram to figure out what was going on.  And I have had theory courses, so I assure you that if I say a state diagram is scary, it absolutely is.  But I felt understanding the connection between memory mapped io and the hardware was important, and I felt that it would help reinforce the datapath analysis they did in the previous chapter.

So I made a complex diagram.  And it took me a very long time.  And then in the end, I felt it was confusing.  Next time I'm going to put my complex diagram on the fancy overhead box and take some highlighters to it.  That will help I think.

My handouts
[https://docs.google.com/fileview?id=0Bzy7KJkG2NnQZDBlNzA5YWMtMDg0Ni00NjFmLTg3N2MtOTdkYmY4N2ZmOTNi&hl;=en](https://docs.google.com/fileview?id=0Bzy7KJkG2NnQZDBlNzA5YWMtMDg0Ni00NjFmLTg3N2MtOTdkYmY4N2ZmOTNi&hl=en)

My slides for IO (annoyingly google docs won't preview this one)
[https://docs.google.com/leaf?id=0Bzy7KJkG2NnQZGM4ZWQ4MjAtNjc5YS00YzI4LWE2MmMtMTE0NzU3MmNhMWNk&hl;=en](https://docs.google.com/leaf?id=0Bzy7KJkG2NnQZGM4ZWQ4MjAtNjc5YS00YzI4LWE2MmMtMTE0NzU3MmNhMWNk&hl=en)

My slides for subroutines
[https://docs.google.com/fileview?id=0Bzy7KJkG2NnQMGU2Y2I5YWMtMGRkOS00NmM3LTgxNmMtMzY4NDhiYTc3MTAx&hl;=en](https://docs.google.com/fileview?id=0Bzy7KJkG2NnQMGU2Y2I5YWMtMGRkOS00NmM3LTgxNmMtMzY4NDhiYTc3MTAx&hl=en)

Video of me (part 1 & 2)
[http://play.media.gatech.edu/v/public/buzzbox/cetl.gatech.edu/CETL_Practicum/mhewner3-2010-02-23A.mp4](http://play.media.gatech.edu/v/public/buzzbox/cetl.gatech.edu/CETL_Practicum/mhewner3-2010-02-23A.mp4)
[http://play.media.gatech.edu/v/public/buzzbox/cetl.gatech.edu/CETL_Practicum/mhewner3-2010-02-23B.mp4](http://play.media.gatech.edu/v/public/buzzbox/cetl.gatech.edu/CETL_Practicum/mhewner3-2010-02-23B.mp4)
