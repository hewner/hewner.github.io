---
author: phewner
comments: true
date: 2011-08-01 00:18:34+00:00
layout: post
permalink: /2011/07/31/summary-of-my-ghp-theory-of-computation-class/
slug: summary-of-my-ghp-theory-of-computation-class
title: GHP Theory of Computation Class Summary
wordpress_id: 524
categories:
- active learning
- student feedback
- Teaching
---

The second class I taught at GHP was Theory of Computation (entitled "Does Not Compute").  We approached the problem of machine equivalence.  This class was a lot of fun and students seemed to enjoy it.  You can [see my feedback](https://spreadsheets.google.com/spreadsheet/pub?hl=en_US&hl=en_US&key=0Ajy7KJkG2NnQdFQ3YlNhbkZMVldhUXZmekhqUmt1cGc&output=html), if you're curious.
<!-- more -->




  * _Day 1:_ I began with the motivating question of the trinary computer.  Is a trinary computer more powerful than a binary computer?  I explained what I meant by computation and computational power, and then introduced the idea of cellular automata.  I showed students a simple rule, I showed students a more complex rule, I asked students to predict the behavior of a relatively simple rule, and then I asked two groups of students to compete in building the most "interesting" automata possible.


  * _Day 2:_ Honestly I'm not quite sure what I did this day.  Presumably we spent some more time playing around with cellular automata.  Just goes to show you you should document your stuff as you do it.


  * _Day 3:_ I gave all the students an assignment...to build a cellular automata of at least 2+ colors or 4+ "looking".  Exactly what it did was completely up to them.  To help them, we spent a day in the computer lab getting familiar with the Cellular automata code of NetLogo.  

This assignment was a really good move.  I think it forced the students to engage with the material more carefully, which I was then able to use in later work.  Also, several students took the opportunity to build some really cool automata.  Three students came to me and asked if they could build a automata to multiply two numbers.  In the process of that, they also built one to determine if one number was an equal divisor of the other.



  * _Day 4:_ We talked about Cellular automata doing genuine computation and I showed an example machine the squared an input number.  Then I asked the students to attempt to simulate additional looking with a more colorful cellular automata.  This took a while and some students struggled with it.  Then I abstracted this into a general idea of proof by simulation.  I showed a universal 16-color cellular automata and we talked about what it suggested how the computational power of cellular automata.


  * _Day 5:_  Introduced finite automata, and asked the students to build a few simple example ones.  Then I explained the pumping lemma, and did 1 or two examples.  When students had to use the pumping lemma on their own, they had some trouble with it. 


  * _Day 6:_ Given the problems students had before, I went through a few more examples of the pumping lemma but people still seemed confused.  I also briefly showed nondeterministic cellular automata and talked about regular expressions.


  * _Day 7:_  I finished my discussion of the pumping lemma by giving students a handout that stepped through my process in the pumping lemma.  I introduced the specification of Turing machines, and then we walked through an example of Turing machine operation in JFLAP  
  
This was the last class for several of my students - they took the opportunity to try some other GHP math class.  Most of my students stayed, plus I got a few extras.  But I felt a little bad: some of the students said that they enjoyed the material but found the class was too challenging for them.  Given the strong background of my students...I felt like that was a sign I was going a bit too fast and losing some of my students.  If I do this class again I'll definitely try to make stuff a little more explicit and move more carefully to ensure we don't lose anyone before the big finish.



  * _Day 8:_  I presented students with a list of various Turing machines problems, sorted in difficulty from easier to harder. Each of them worked in pairs or small groups to solve problems of their choice


  * _Day 9:_  We implemented the Turing machines the students had designed in JFLAP.  I went around a bit, helping students who were having some trouble implement their machines.


  * _Day 10:_ I asked 1 group of students to prove that Turing machines could be simulated by infinite automata and the other to prove the reverse.  Both teams had success.  I presented the idea that Turing machines could simulate modern computers.  Then I discussed what this meant and introduced the Church-Turing thesis.


  * _Day 11:_ A discussion of incomputable problems. 


  * _Day 12:_ Discussion of N vs. NP, including an introduction to non deterministic Turing machines and their relationship with verifiers 


  * _Day 13:_ Discussion of the existence of NP complete problems, including a (very brief) synopsis of Cook's theorem.  I also showed how to provide Satisfiability was reducible to graph 3 coloring.


  * _Day 14:_ Some students spontaneously came up to me at the end and said they now felt confident trinary computers provided no additional power. Discussion with the whole class about how the course went 



Files of interest:


  1. [DoesNotCompute1](http://hewner.com/wp-content/uploads/2011/07/DoesNotCompute1.pptx)

  2. 
[Does not Compute 3](http://hewner.com/wp-content/uploads/2011/07/Does-not-Compute-3.pptx)

  3. 
[Does not Compute 4](http://hewner.com/wp-content/uploads/2011/07/Does-not-Compute-4.pptx)

  4. 
[Does Not Compute 5](http://hewner.com/wp-content/uploads/2011/07/Does-Not-Compute-5.pptx)

  5. 
[Mike Solves a Pumping Lemma Problem](http://hewner.com/wp-content/uploads/2011/07/Mike-Solves-a-Pumping-Lemma-Problem.pdf)

  6. 
[AutomataAssignment](http://hewner.com/wp-content/uploads/2011/07/AutomataAssignment.docx)

  7. 
[The Epic Automata Showdown](http://hewner.com/wp-content/uploads/2011/07/The-Epic-Automata-Showdown.docx)

  8. 
[Turing-Church Thesis](http://hewner.com/wp-content/uploads/2011/07/Turing-Church-Thesis.pptx)




