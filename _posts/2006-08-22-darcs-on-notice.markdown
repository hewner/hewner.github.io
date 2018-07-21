---
author: phewner
comments: true
date: 2006-08-22 01:12:20+00:00
layout: post
permalink: /2006/08/21/darcs-on-notice/
slug: darcs-on-notice
title: 'DARCS: on notice'
wordpress_id: 39
categories:
- Worklogs
---

![DARCS: on notice](http://www.technofetish.net/buffaloblog/files/onnotice.gif)

I finally gave up and blew away my old darcs repository.  There is a new one now, in the same place, which contains most of the files that the old one did.

Everything was going great right up untill I added a squeak image to my repository.  These are bigger files (tens of megabytes) but for some reason forever after I did that every change I made to the repository was _slooow_.  How slow, you ask?  Use up all the memory on my system and crawl for 20 minutes so I can't even use the mouse slow.  And especially slow was all the various operations to try and figure out what was going on with the repository.

So screw it.  I have a new repository that's fast again.  But I'm officially putting darcs _on notice_.
