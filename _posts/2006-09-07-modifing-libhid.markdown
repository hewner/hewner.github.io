---
author: phewner
comments: true
date: 2006-09-07 18:39:54+00:00
layout: post
link: http://hewner.com/2006/09/07/modifing-libhid/
slug: modifing-libhid
title: Modifing libhid?
wordpress_id: 45
categories:
- Worklogs
---

Ok geeklings, I could use a little advice.  I'm looking at using/modifing libhid: a small but not inconsequential library.  One of the primary things this library does is parse the HID report, which is a small but not inconsequential language that describes human interface devices and their data.  The problem: this parsing is rather crude right now, so that doing something that should be pretty simple (say, "what is the current state of this HID device") is pretty hard in the general case.  Worse, the library's design is itself rather nasty - or at least, it's not what _I_ want, which is some nicely factored data structures & functions that describe all characteristics of the HID device in a Object-Oriented way that's easy to query.  Basically, I want a parse tree of the HID report.

So I could rewrite the C library, but generating this parse tree without the facilities of an OO language is going to be ugly (or maybe that's just because I'm not familiar with C-style).  At the very least, rolling my own C data structures (like lists, and perhaps maps) is gonna be an annoyance.  Also problematic will be memory allocation/deallocation (this is where C++ constructors/destructors really come in handy).  Also virtual functions will be missed for querying aggregate data on the parse tree once it's built.

Possible solutions:




  1. Try to use the library as it is (perhaps with a few crude extensions) and then glom a fancy OO interface layer in something like ruby that hides the ugliness.  Pros: easy Cons: might not be able to keep some of the ugliness from poking through, other users of the C are still screwed


  2. Rewrite the parsing in C++ using the STL.  Pros: Not that hard.  Also a nice clean C++ interface.  Cons: This is currently a C library and I'm not sure if the maintainers would appreciate C++.  Increased binary size with the STL.  Increased difficultly iterfacing with other langauges using swig (but not impossible).


  3. Rewrite the parsing in the cleanest possible C.  Possibly using a C data structure library that somebody could point me to.  Pros: small binary size, good C interface.  Cons: Possibly hard, especially if I have to use my own data structures.  Not as clean as the C++ interface (especially if somebody like me, still thinking C++-style, writes it)



What would you do?

