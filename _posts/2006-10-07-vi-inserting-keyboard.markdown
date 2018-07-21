---
author: phewner
comments: true
date: 2006-10-07 08:07:05+00:00
layout: post
permalink: /2006/10/07/vi-inserting-keyboard/
slug: vi-inserting-keyboard
title: VI inserting keyboard
wordpress_id: 51
categories:
- Programming Stuff
- Worklogs
---

Ever since I read the Raskin's [The Humane Interface](http://www.amazon.com/gp/explorer/0201379376/2/ref=pd_lpo_ase/104-1708760-0719920?), I've been especially noticing what Raskin calls "mode errors" in VI.  Mode errors happen when you have two different modes of operation and you accidently do a Mode A command in Mode B.

Raskin really hates this kind of error, partly because they interfere with the feedback that you need to become skilled.  Every key combination needs to have a implict  but because sometimes that involves doing something and sometimes it dosen't, it's difficult to train your fingers to do it automatically.

I can hear you VI users scoffing at me.  I dunno if Raskin's right about this, but every UI mode problem can be solved most ridiculously by adding more buttons...right?

So partly as a joke, partly to write a more interesting example of my USB library, and partly to see what it would be like, I've built a ruby script that let's you use a USB be keyboard as "VI inserting keyboard".  Every text key presed in this keybord maps to "a[KEY][ESC][ESC]".  So if you use this keyboard in VI command mode you can enter whatever you want but stay in command mode.  It strikes me that it might be saner to do the opposite - have an external keyboard permanently in command mode - perhaps that can be version 2.

Anyways, this works beautifuly and it only took me a couple of hours (mostly involved with finding the appropiate way to simulate X keys and map USB usages to X keysyms).  Just figured you might be amused:

[http://www.technofetish.net/repos/buffaloplay/vikeyboard/](http://www.technofetish.net/repos/buffaloplay/vikeyboard/)

If I'm really feeling motivated maybe I'll glue two keyboards together tomorrow and try it out properly.
