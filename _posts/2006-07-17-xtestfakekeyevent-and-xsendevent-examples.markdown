---
author: phewner
comments: true
date: 2006-07-17 07:09:08+00:00
layout: post
link: http://hewner.com/2006/07/16/xtestfakekeyevent-and-xsendevent-examples/
slug: xtestfakekeyevent-and-xsendevent-examples
title: XTestFakeKeyEvent and XSendEvent examples
wordpress_id: 34
categories:
- Worklogs
---

So I was distracted on a fairly useful tanget today...looking info on XSendEvent and XTestFakeKeyEvent as an alternative to my funky XWindows keyboard driver.

After playing for a bit, I came to the same conclusion that everybody else did...XSendEvent is worthless as a tool for doing any sort of interesting keyboard remapping.  Xev seemed to be the only app I could find that even noticed my simulated XSendEvent keys.  I suppose I shouldn't expect more from what amounts to a giant security hole.  XTestFakeKeyEvent on the other hand, worked like a charm.

I could have discovered this faster if I could've found some example source code quicker.  But with some searching I found two tiny little apps that do a good job showcasing their respective functions.

[xpusher.c](http://examples.oreilly.com/networksa/tools/xpusher.c) ([local](http://technofetish.net/repos/buffaloplay/xtest/xpusher.c)) by Peter Shipley for XSendEvent
[keylockx.c](http://www.thelinuxpimp.com/files/keylockx.c) ([local](http://technofetish.net/repos/buffaloplay/xtest/keylockx.c)) by Flu for XTestFakeKeyEvent
