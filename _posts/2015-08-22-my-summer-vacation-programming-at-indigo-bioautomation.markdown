---
author: phewner
comments: true
date: 2015-08-22 19:05:15+00:00
layout: post
permalink: /2015/08/22/my-summer-vacation-programming-at-indigo-bioautomation/
slug: my-summer-vacation-programming-at-indigo-bioautomation
title: 'My Summer Vacation: Programming at Indigo Bioautomation'
wordpress_id: 770
categories:
- Programming Stuff
---

This summer I had a fun opportunity to program in a space I've never really explored before: medical data analysis.  The company was [Indigo Bioautomation](http://www.indigobio.com/).  They build cloud-based software for analyzing mass spectrometer data.  Here's a pretty good introduction if you're curious:

[embed]https://www.youtube.com/watch?v=G_7da3nmKPM[/embed]

Despite medical tech's reputation for somewhat old-school and slow software approaches, Indigo definitely feels like a startup.  They are using new technology: TokoMX, a heavily modified ruby-on-rails stack, Backbone.js, etc.   They also have an agile in-house process pretty similar to other places I've worked.

One thing that was different though: automated testing.  The Indigo guys are totally on board and have tons of automated tests for everything.  It's a different mindset: I definitely had to be reminded to write more tests several times during my tenure.  There's a lot of good, but also some bad - in particular, long test runtimes (like 5+ minutes) are a huge problem there despite a lot of careful design work to optimize.  And of course bugs still slip through in various places...though they definitely tended to be more obscure and less "this feature doesn't even sort of work" like I've seen elsewhere.  My views on automated testing have definitely become a lot more nuanced - and I'm constantly thinking of ways I want to revise what we talk about in the SE curriculum to reflect that.

Indigo really let me explore their system.  I worked on a big command line tool, in their Java-based rules engine, writing MongoDB queries, front-end javascript, and lots of ruby coding both on webservers and services.  The opportunity to get down-and-dirty with ruby was particularly fun: I really think I see now how it differs from python in actual practice.

Overall I learned plenty and I think Indigo is happy with what I produced for them.  I'm missing my students and looking forward to being back at Rose in a few weeks though.
