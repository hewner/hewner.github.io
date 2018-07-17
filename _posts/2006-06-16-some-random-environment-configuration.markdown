---
author: phewner
comments: true
date: 2006-06-16 06:11:05+00:00
layout: post
link: http://hewner.com/2006/06/15/some-random-environment-configuration/
slug: some-random-environment-configuration
title: Some random environment configuration
wordpress_id: 30
categories:
- Worklogs
---

Wasted altogether too much time playing with fonts and colors today, but these settings might as well be preserved for postery.  First the wmii configuration - I went with a darkblue scheme that looks like this (I had to install the artwiz package for the fancy font):

`
WMII_FONT='-artwiz-*-normal-*-*-*-*-*-*-*-*-*-*-*'
WMII_SELCOLORS='#72F28B #003366 #6A5ACD'
WMII_NORMCOLORS='#2E8B57 #000033 #000066'
`

Of course my xterm looked wrong once I used that, so I had to fix it too.  I modified my .Xdefaults to look like
`
XTerm*Background: #000038
XTerm*Foreground: ivory
`

I had to run "xrdb -merge ~/.Xdefaults" for this setting to take effect.

Here's [a screenshot](http://technofetish.net/buffaloblog/files/screenshot.gif) with the result
