---
author: phewner
comments: true
date: 2010-03-18 01:42:13+00:00
layout: post
link: http://hewner.com/2010/03/17/using-the-cui32-stickos-command-line-in-linux/
slug: using-the-cui32-stickos-command-line-in-linux
title: Using the CUI32 StickOS command line in Linux
wordpress_id: 204
categories:
- Worklogs
tags:
- basic
- cui32
- linux
- minicom
- putty
- serial
- stickos
- ubuntu
---

Even though I really don't play with my hardware toys much anymore, I keep an eye on the hardware hacker blogs.  So when I heard rumors of the [CUI32](http://www.sparkfun.com/commerce/product_info.php?products_id=9645), I admit that I was salivating a little.  I told myself it might be a good platform to teach a summer workshop to some high school students.  This is like a star-wars fan telling you the $45 Bobba Fett miniature he just bought is "for his kids".

But the [CUI32 platform](http://code.google.com/p/cui32/) is pretty hot.  Designed for USB.  Built in BASIC.  Plus there seems to be a built-in bootloader so you don't need an external programmer.

There is not a ton of documentation for this device.  In particular, I had a heck of a time figuring out how to get Linux to communicate with its serial BASIC tty interface.  By doing a "ls /dev/tty*" I could see there was a serial device called "/dev/ttyUSB0".  But how to talk to it.  I tried minicom but it kept giving me errors.  I was wondering if there was some mysterious undocumented setting about party, flow control, or some other madness that I never really understood.

Then I tried putty.

[code light="true"]
putty -serial /dev/ttyUSB0
[/code]

Worked like a charm.

