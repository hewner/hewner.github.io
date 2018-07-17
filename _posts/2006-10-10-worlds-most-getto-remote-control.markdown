---
author: phewner
comments: true
date: 2006-10-10 01:48:53+00:00
layout: post
link: http://hewner.com/2006/10/09/worlds-most-getto-remote-control/
slug: worlds-most-getto-remote-control
title: World's Most Getto Remote Control
wordpress_id: 52
categories:
- Worklogs
---

As you might have guessed it would, my peculiar madness had me wandering ValueVillage this Saturday.  I was looking for cheap USB keyboards to hack together into my ultimate VI keyboard.  The keyboards were a lost cause as it turns out...only PS/2 stuff there...but I did discover something: the Toshiba LED Control Module PMD-C0188.  It's this chuky plastic box with two rows of buttons and a volume knob.  If I had to guess I would say that it's likely built to control some sort of fancy telephony app - but this is a guess.

Anyways, I took it home with me ($5) on the theory that it problably was a USB HID device that I could reprogram to control my little TV watching computer.

Altogther too long later, it finally works.  Reverse engineering the button's protocol turned out to be pretty easy (here's [the app](http://www.technofetish.net/repos/buffaloplay/toshiba/mystery_data.rb) that did it).  That was the easy part.  The annoying part was getting it to control VLC properly, and then getting it installed on my other box.  For the most part, not problems you would be interested in.

Anyways, it works now and I'm going to watch a little anime in celebration.  Here's the [code that did it](http://www.technofetish.net/repos/buffaloplay/toshiba/toshiba_control.rb). 
