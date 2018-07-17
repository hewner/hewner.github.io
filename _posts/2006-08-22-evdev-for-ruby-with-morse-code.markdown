---
author: phewner
comments: true
date: 2006-08-22 01:51:13+00:00
layout: post
link: http://hewner.com/2006/08/21/evdev-for-ruby-with-morse-code/
slug: evdev-for-ruby-with-morse-code
title: evdev for ruby (with morse code!)
wordpress_id: 40
categories:
- Programming Stuff
---

I built a ruby wrapper for the linux evdev interface.  evdev is an interface that lets you work with various linux input devices - touchscreens and mouses and joysticks and keyboards.

So what can you do with this?



	
  * Well, you can map the interesting (yet unused) buttons on your keyboards and mice to ruby functions.  Even those crazy buttons like volume up and down are fair game

	
  * If you are the sort of person who can never have too many buttons, you could even attach an additional usb keyboard and have 100+ additional ruby programmable keys to play with (this would require just a tiny bit of xorg.conf playing...but ask me an I'll explain it).

	
  * You can control your keyboard LEDs and have them flash when interesting events occur (like mail, or when you're missing a meeting)



I've written one sample app.  It takes data on STDIN and outputs to your scroll lock LED in _morse code_.  Just like in Cryptonomicon!

[fancy documentation](http://technofetish.net/repos/buffaloplay/ruby_evdev/doc/)
[the code itself](http://technofetish.net/repos/buffaloplay/ruby_evdev/)
[a tarball](http://technofetish.net/buffaloblog/files/rubyevdev.tar.gz)
[morse sample documentation](http://technofetish.net/repos/buffaloplay/ruby_evdev/doc/files/morseout_rb.html)

Note that because this has a c extension in it, you'll have to recompile it on your linux system.  It's super easy.  Go to the root and type "ruby extconf.rb"...this will generate a Makefile.  Then type "make" and you should be good to go.

**Update!** If you want to make this comptable with Ruby 2, use [this very nice patch file by Scott Johnson](http://technofetish.net/repos/buffaloplay/ruby_evdev/ruby2_evdev.patch)
