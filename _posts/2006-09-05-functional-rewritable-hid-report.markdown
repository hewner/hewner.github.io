---
author: phewner
comments: true
date: 2006-09-05 20:55:47+00:00
layout: post
permalink: /2006/09/05/functional-rewritable-hid-report/
slug: functional-rewritable-hid-report
title: Functional rewritable HID report
wordpress_id: 43
categories:
- Worklogs
---

So I've got a microcontrolller that acts like a USB device but stores a bunch of it's HID report in EEPROM memory.  The HID report is what determines a USB Interface Device's input characteristics.  Both what fields the OS expects from the device (say 3 fields 1 bit long) and how it determines the meaning of those fields (say left mouse/middle mouse/right mouse) is encoded in the HID report.

I think this could be really cool for prototyping new input devices.  You could have a generic micrcocontroller, hook it up to a variety of interesting input/output devices, and then send it some data that will reconfigure its HID report to reflect these devices.

But we're not really there yet.  What my current software lets you do is just raw upload a new chunk of HID report into the device that it will start reporting back.  But the output/input fields of the device don't change, so the utility is somewhat limited.  Ideally what would happen instead is that youd say something like "Make PIN X a button" and the microcontroller would add an appropiate entry to the HID Report and then start reporting PIN X in its reports.

Anyways, you can see my current stuff in source control under [configurekeys](http://technofetish.net/repos/buffaloplay/configkeys/).  This is derived from the [HIDKeys demo](http://www.obdev.at/products/avrusb/hidkeys.html) project by the AVR USB people.
