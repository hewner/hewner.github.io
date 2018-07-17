---
author: phewner
comments: true
date: 2015-05-20 16:35:06+00:00
layout: post
link: http://hewner.com/2015/05/20/programming-assignments-for-programming-language-paradigms/
slug: programming-assignments-for-programming-language-paradigms
title: Programming Assignments for Programming Language Paradigms
wordpress_id: 757
categories:
- Teaching
---

This winter I taught a course called Programming Language Paradigms.  This is a language-oriented course where students learn several interesting programming languages and discuss the various features of these languages.  The goal is to learn the various paradigms of programming through actually using the languages to solve the kinds of problems that they are well suited for (you can see [the complete notes for the course](http://files.hewner.com/2014-2015/csse403/ClassOutline.html), if you're interested).  One of the consequences of this was that I had to develop a lot of assignments in each of the languages.  Of course, I didn't develop them from scratch - I dug around and bummed what I could from courses I found online.  But there's not as many assignments out there as there used to be, partly because I think many college courses now use Moodle and so are automatically walled off.  But I figured at the very least I could contribute a few.

**Prolog Assignments**

Prolog turned out to be a great language to start with - absolutely different than what they had seen before, and fun to solve the problems.




	
  1. [Maze Problem](http://files.hewner.com/2014-2015/csse403/HomeworkCode/PrologPathFinder/mazeProblem.pl) simple pathfinding, first assignment in prolog.  Main thing is that it's designed to force to you encounter infinite prolog loops earily.
	
  2. [Word Find](http://files.hewner.com/2014-2015/csse403/HomeworkCode/PrologWordFind/prologWordFind.pl) a program that generates all possible "word finds" for a list of words.  Main thing is that it forces you to carefully manage unbound variables.
	
  3. [Grade NLP](http://files.hewner.com/2014-2015/csse403/HomeworkCode/PrologGradeNLP/PrologGradeNLP.pl) final prolog project.  In practice, it was a bit too open ended - lots of folks didn't end up doing anything too cool.  I think next time I'll do a more traditional sentence structure NLP, plus more hints for how to structure the code.  I think if I were to do it again I'd follow [this assignment](https://www.cs.rochester.edu/~brown/173/exercises/logic/prolog/NLtoFOL/LogicTrans.html) more closely.



**Erlang Assignments**

Erlang was maybe the least well-loved of the assignments, but I think that may be more due to the complexity of managing multithreaded programming.




	
  1. [List Problems](http://files.hewner.com/2014-2015/csse403/HomeworkCode/ErlangListProbs/list_probs.erl) first functional-ish language so needed to give them some practice with iterators.

	
  2. [Simple Communication](http://files.hewner.com/2014-2015/csse403/HomeworkCode/ErlangSimpleCommunication/solveme.erl) in class activity where students practiced setting up multiple processes and communicating 

	
  3. [Merge sort](http://files.hewner.com/2014-2015/csse403/HomeworkCode/ErlangMergeSort/mergesort.erl) a multi-process merge sort.  Students don't actually have to implement merging or sorting, but the communication is tricky.  This one has some basic unit tests.

	
  4. [Paxos](http://files.hewner.com/2014-2015/csse403/HomeworkCode/ErlangPaxos/paxos.erl) final project, implementing the paxos algorithm in erlang.  Includes some serious unit testing.  But this assignment was probably too hard - I think I might do the [raft algorithm](https://raftconsensus.github.io/) next time which supposed to be simplier.



**Elm Assignments**

Elm was liked by folks who enjoyed making games, less liked by others.




	
  1. [Circle following mouse](http://files.hewner.com/2014-2015/csse403/HomeworkCode/ElmMouseCircle/MouseCircle.elm) simple but gets the idea of signals across

	
  2. [Line drawing](http://files.hewner.com/2014-2015/csse403/HomeworkCode/ElmLineDrawing/LineDrawing.elm) adds in the state signal

	
  3. [Spacewar](http://files.hewner.com/2014-2015/csse403/HomeworkCode/ElmSpaceWar/spacewar.elm) more complex state, getting ready for the final project

	
  4. [Scrolling Video game](http://files.hewner.com/2014-2015/csse403/HomeworkCode/ElmVideoGame/game.elm) the assignment itself seemed to work pretty well.  Nobody asked to do something different than the scroller.



**Other in-class activities**




	
  1. [Lua/C integration activity](http://files.hewner.com/2014-2015/csse403/HomeworkCode/ElmVideoGame/game.elm)

	
  2. [An in class thing about making monads I did with Haskell](http://files.hewner.com/2014-2015/csse403/ClassOutline.html#sec-18-1)



I have solutions for many of these assignments as well (excluding the really open-ended ones) - as long as you're a professor or something similar.  Email me.

