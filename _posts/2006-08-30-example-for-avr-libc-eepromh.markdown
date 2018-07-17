---
author: phewner
comments: true
date: 2006-08-30 06:45:43+00:00
layout: post
link: http://hewner.com/2006/08/29/example-for-avr-libc-eepromh/
slug: example-for-avr-libc-eepromh
title: Example for avr-libc eeprom.h
wordpress_id: 42
categories:
- Worklogs
---

I must say that I'm really beginning to bond with my Atmega8 microcontroller.  It seems that every time I think of a feature I want my microcontroller to have, it turns out it's already in there.  Not bad for a $2 chip.

In this case what I wanted was somewhere I could programmatically write data that would be preserved even when the power goes out.  Turns out the Atmega8 actually has some built in EEPROM memory (as well as its RAM and its Flash memory where your program is stored).  But I couldn't find any example code for these EEPROM features, even though they seemed well supported by avr-libc library.

Turns out doing it was pretty obvious...the only wrinkle was that I had to upgrade to version 1.4 of the library to get all the latest goodness.  Check out [the code in my source control](http://technofetish.net/repos/buffaloplay/avrplay/eepromtest.c).

This program is just a simple couter app that updates some LEDs everytime you press a button.  But the exciting thing it does is remembers the current state of the counter even when it's powered off.
