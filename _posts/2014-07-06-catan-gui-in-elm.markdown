---
author: phewner
comments: true
date: 2014-07-06 08:12:27+00:00
layout: post
permalink: /2014/07/06/catan-gui-in-elm/
slug: catan-gui-in-elm
title: Catan GUI in Elm
wordpress_id: 746
categories:
- Programming Stuff
---

I'm in India, but there's some downtime and I've been using it to play a with a toy project - a Settlers of Catan game built in the pure FRP web language Elm.  Well, perhaps "game" is to strong of a word for what I've done thus far - lets say Settlers of Catan GUI.

[caption id="attachment_747" align="aligncenter" width="757"][![Click the image to see the code/try it out!](http://hewner.com/wp-content/uploads/2014/07/Screenshot-from-Catan.png)](http://www.share-elm.com/sprout/53b8fccde4b07afa6f982aeb) Click the image to see the code code/try it out![/caption]

I really liked using a boardgame to try out Elm.  It's a fun thing to try BUT the mechanics of the game itself force you to confront real problems.  The examples on [the very nice elm website](http://elm-lang.org/) are cool, but once I tried to actually engage with a data model more complex than just a few coordinates, things got pretty crazy.

One thing I can say is that the mechanics of FRP really encourage you to come up with a can GUI/model seperation.  I eventually came up with this idea of hoverable stuff - which in theory the model can communicate to the GUI all the board objects that can be manipulated, then the GUI itself does the highlighting, then when the user clicks the selected object is communiated back to the model - which adjusts its internal state and then gets re-rendered.  Not bad.

Some of the other stuff is not so fun.  Some of is just book keeping - variables are not mutable, so when the state needs to be updated you can't just update it.  Instead you need to return a fully new model object, based on the old model object but with the variable changed.  But when your model actually is complex, this is very annoying - the value you need to change is one variable in a record in a dictionary in the overall model.  So you need a function that takes a record and returns a new record, a function that takes a dictionary and returns a new dictionary, and a function that takes a model and returns a new model.  Also, if you have dictionaries of various keys and values, these functions are not easily reusable - although maybe you could do something with type parameterization somehow.

Other stuff is more than annoyance.  Every function must be pure, so random numbers are hard.  In elm, you need a random "signal".  But unfortunately, signals don't have values at initialization time - they only exist when your program is actually "running" (i.e. a very funky pure functional transformation of input signals to GUI signals).  So if your board arranged randomly - prepare for some serious sadness.  I did figure out a way around it, but it was anything but pretty.

Anyways, I had some fun with elm.  I'm not sure if I am actually going to complete the catan game - most of the rest of it seems unlikely to teach me new stuff and board games have a lot of complexity.  But I did learn a lot, and I think I may ask students to build a (much smaller project) in elm as part of an upcoming programming language course I'll be teaching in the winter.
