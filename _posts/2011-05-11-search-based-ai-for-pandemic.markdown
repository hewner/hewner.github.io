---
author: phewner
comments: true
date: 2011-05-11 23:33:59+00:00
layout: post
link: http://hewner.com/2011/05/11/search-based-ai-for-pandemic/
slug: search-based-ai-for-pandemic
title: Search-Based AI for Pandemic
wordpress_id: 490
categories:
- Programming Stuff
---

The final project for my game AI course was to build an AI for a modern board game.  My team selected Pandemic, a cooperative board game in which players need to both travel around preventing diseases as well as hoarding cards to "cure" diseases.

Emboldened by the success of my very simple AI for Mario Brothers, my team opted to use a simple search-based algorithm for evaluating pandemic moves.  In our implementation, game-state objects represented the state of the game, and had the ability to return all the legal moves available in a particular state.  These various moves could generate new GameState objects that represented the state after the move was performed.  This let the AI avoid understanding the many effects of various moves - the AI could simply "simulate" the move and then evaluate the "goodness" of the resultant game state.

I think this a perfect example of the sort of solution that is quite obviously a dumb idea in retrospect.  To see why, consider the answer to these two questions:



	
  1. How many moves are possible in any given game state?  Answer: approximately 10, as long as you eliminate certain high-branching moves.

	
  2. How many moves do you have to look ahead to plausibly identify good states?  Answer: About 20-40.


If you pause to consider the magnitude of 10 quintillion for a second, I'm sure you can identify the problem with my team's AI.  As a result, the search tree has to be pruned aggressively.  As a result of that, the AI adopts a short-term greedy stratgey that can't win:



[Pandemic AI Video](http://vimeo.com/23057849) from [Michael Hewner](http://vimeo.com/user3206021) on [Vimeo](http://vimeo.com).



In retrospect, I wish the instructor for this class has given us a more constrained problem for a final project.  Ninety percent of my team's time was spent on details of implementing the game itself.  For a similar project difficulty, I could have implemented 4 more sophisticated AI approaches.

You can see the code here: [http://code.google.com/p/pandemic/](http://code.google.com/p/pandemic/)
