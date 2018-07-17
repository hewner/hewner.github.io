---
author: phewner
comments: true
date: 2006-10-05 06:31:00+00:00
layout: post
link: http://hewner.com/2006/10/04/working-ruby-hid-listener-example/
slug: working-ruby-hid-listener-example
title: Working ruby HID listener example
wordpress_id: 50
categories:
- Worklogs
---

So I haven't been slacking off, even though things have been pretty quiet on the blog lately.  What I've been doing is integrating both my HIDParser and libusb into ruby.  This isn't so much of a straight port like my evdev stuff...I've worked really hard to build interfaces hid most of the unecessary complexity from you but inferring everything from the USB descriptors.  So for example here's an application that listens for "F" presses on any appropiate USB keyboard:



<blockquote>
require 'libusb'

hid_device = USB::devices.select { |d| d.hid? }[0]
hid_interface = hid_device.interfaces { |i| i.hid? }[0]
hid_interface.detach_kernel
listener = USB::UsageListener.new(hid_interface)
usage = USB::Usage.find_usage_named(/Keyboard f/)
puts "listening for usage #{usage}"
listener.on_usage_value_change(usage) { |new_val| puts "New value: #{new_val}" }
listener.start_listening
</blockquote>



Pretty simple, eh?  In this case the application assumes that the first hid device on your system is capable of producing an F keypress (a slightly more complex example could check first).

Anyways, there's a lot more that needs to be done in terms of fleshing out the interface - exposing greater amounts of the C/C++ layer and (perhaps) supporting a greater variety of USB transport mechanisms.  But still, I'm pretty pleased with how simple the main case was able to get.

All the code is in [my source control](http://www.technofetish.net/repos/buffaloplay/ruby_libusb/) if you want to play around with it or look at it (the example is [map_example](http://www.technofetish.net/repos/buffaloplay/ruby_libusb/map_example.rb)).  No documentation yet, but if that's what's holding people back I could be convinced to write it.

In theory it should be compatable with BSD and MacOS X though that has certianly never been tested.  If you try it and you have trouble building or running the app, let me know I'm happy to help you figure it out.

