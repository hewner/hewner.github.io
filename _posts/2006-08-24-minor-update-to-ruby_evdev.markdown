---
author: phewner
comments: true
date: 2006-08-24 22:51:30+00:00
layout: post
permalink: /2006/08/24/minor-update-to-ruby_evdev/
slug: minor-update-to-ruby_evdev
title: minor update to ruby_evdev
wordpress_id: 41
categories:
- Worklogs
---

So Josh looked at my code and suggested that I change my write_event function to use syswrite.  Which required a tiny bit of uglyness but seems to work.

I went in and added licensing information too (GPL version 2...inherited from the evdev library itself).

Everything's in the repository and the tarball.  I think it's time to post this bugger to the wider world.
