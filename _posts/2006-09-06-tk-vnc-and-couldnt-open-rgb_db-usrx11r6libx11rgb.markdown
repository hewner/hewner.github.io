---
author: phewner
comments: true
date: 2006-09-06 21:58:09+00:00
layout: post
permalink: /2006/09/06/tk-vnc-and-couldnt-open-rgb_db-usrx11r6libx11rgb/
slug: tk-vnc-and-couldnt-open-rgb_db-usrx11r6libx11rgb
title: tk, vnc, and Couldn't open RGB_DB '/usr/X11R6/lib/X11/rgb'
wordpress_id: 44
categories:
- Worklogs
---

![](http://www.technofetish.net/buffaloblog/files/crab.jpg)

I am filled with a terrible hate.  How is it that I spent 2 hours debugging this problem?  When running a tk application from within tightvnc, I got this error message:

`error initializing Tk: 'this isn't a Tk application unknown color name "Black"`

I eventually noticed that I was also getthing this message in my tightvnc error logs:

`Couldn't open RGB_DB '/usr/X11R6/lib/X11/rgb'`

I suspected this had something to do with rgb.txt not being in the expected place.  But here's the final piece of the puzzle (from the man page of xorg.conf):

_Note that an implicit .txt is added to this path if the server was compiled to use text rather than binary format RGB color databases._

So all it took to fix the problem was this:
`
sudo ln -s /etc/X11/rgb.txt /usr/X11R6/lib/X11/rgb.txt`
