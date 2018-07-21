---
author: phewner
comments: true
date: 2006-09-20 20:25:38+00:00
layout: post
permalink: /2006/09/20/c-usb-hid-parser/
slug: c-usb-hid-parser
title: C++ USB HID parser
wordpress_id: 47
categories:
- Worklogs
---

So I have a more-or-less working USB HID parser.  It took a good bit longer than I thought it would and it didn't come out as well as I thought it would.  I might write some blog posts about that.  But still, it's not too embarrasing:

[http://technofetish.net/repos/buffaloplay/HIDParser/](http://technofetish.net/repos/buffaloplay/HIDParser/)

Notice the fancy unit tests and whatnot.

I also built one test application - hid_report_dumper.  You give it a product_id and vendor_id (observable in /proc/bus/usb) for a USB HID device on your system and it will print out some interesting details about the format of its data reports.  It's not at this point stuff that a layperson might fight useful but it is interesting (and I can help you intepret if you're curious).  If you actually want to compile and run this you'll need libhid installed on your system.

Assuming all goes well, you can make it with "make dumper" and run it like this "sudo ./hid_report_dumper 0x0637 0x3".  Bear in mind that it will disconnect whatever device you pick from the kernel's HID driver so that device will stop working.

