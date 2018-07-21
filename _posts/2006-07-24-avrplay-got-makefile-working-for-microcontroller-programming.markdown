---
author: phewner
comments: true
date: 2006-07-24 03:33:58+00:00
layout: post
permalink: /2006/07/23/avrplay-got-makefile-working-for-microcontroller-programming/
slug: avrplay-got-makefile-working-for-microcontroller-programming
title: avrplay - got makefile working for microcontroller programming
wordpress_id: 35
categories:
- Worklogs
---

Woo!  Ok, I dug up my old makefiles for microcontroller programming and they worked like a charm!  Crazy eh?  I was half convinced the programmer and my one working test controller would be completely static fried.

I had one tiny problem.  I got this message:



<blockquote>
216% make program                                                      ~/avr
uisp -dprog=stk500 -dpart=ATmega16 --erase --upload if=rom.hex
Error: No such file or directory
 -> /dev/avr
make: *** [program] Error 1
</blockquote>



Which was fixed just as you would expect: `sudo ln -s /dev/ttyS0 /dev/avr` 

Of course the bad news about everything working so well is I still really don't understand very much of the black magic the makes this thing tick.  But hey, that understanding will come with time and horrible horrible pain, right?

Anyways, check out avrplay in my source repository for all the wacky fun:
[
http://technofetish.net/repos/buffaloplay/avrplay/](http://technofetish.net/repos/buffaloplay/avrplay/)

Here's what I do to make it all happen.


<blockquote>
make atmega16
make program
</blockquote>



I just put in a big hardware order so you'll hopefully be seeing lots more fun stuff in this vein soon.
