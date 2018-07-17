---
author: phewner
comments: true
date: 2010-02-19 23:00:55+00:00
layout: post
link: http://hewner.com/2010/02/19/tacrypt-a-javascript-hack-for-webpages-with-multiple-reveals/
slug: tacrypt-a-javascript-hack-for-webpages-with-multiple-reveals
title: TACrypt - A JavaScript Hack for Webpages With Multiple Reveals
wordpress_id: 153
categories:
- Programming Stuff
- Teaching
---

So the TAs in the class I'm observing have a problem.  They've got some material they want to present about (briefly), but because students have a lab assignment the presentations tend to get drowned out.  Students are busily trying to get started and get out as quickly as they can.

Of course, one solution is to just not post the assignment until the presentation is complete.  But in an assignment with multiple parts, this tends to make for long boring lecturing.  And who remembers how problem 5 was presented after doing problems 1-4 anyways?

I've also been encouraging the TAs to stop work every now and again and have students pair up or something to check their answers.  An hour practicing the wrong technique is not gonna help anybody.  But as long as the students are just trying to get done at max speed, they're not going to be particularly reflective as they compare answers.

OK, solution-time.  I wanted a way to post a static page with encrypted sections.  That way the TAs can just write the password on the board - they don't have to have multiple files, or login anyplace to "enable" stuff.

So I built a library using [jQuery](http://jquery.com/) and [Gibberish-AES](http://github.com/markpercival/gibberish-aes) to do that.  The main thing was trying to make it easy to write these homework pages.  Here's my instructions:





  1. Write your webpage with the various sections you want to hide
surrounded by div tags with a password attribute.  Like so:

[sourcecode language="html" light="true"]
<div password="foo">
This is a question.  But I don't want it revealed till 
you enter 'foo' in the password box.
</div>
[/sourcecode] 

Of course the password should be whatever you want the password for that section to be.

The webpage can be just about as fancy as you need it to be.  But you must have a <head></head> and <body></body>tag pairs.  Certian kinds of tricky javascript may also have some problems.




  2. 2.  Include my javascript library in your page, by adding this to the head:
[sourcecode language="html" light="true"]
<script type="text/javascript" src="http://home.cc.gatech.edu/hewner/uploads/1/tacrypt.js"></script>
[/sourcecode]
or, you know, copy that javascript to wherever you want to and point the page there.



  3. When you load your page now, every div that you marked with a password should now be invisible.  For double checking purposes a label should be there pointing it out and indicating what the password is.  To make sure everything is working properly, type your passwords into the box at the upper left and be sure everything is appearing like you think it should be.




  4. Click the link on the bottom of the page to show code.  You should see all the div contents has been replaced with encrypted strings.  Sanity check to make sure the HTML looks fine...the replace mechanisms aren't 100% bulletproof.



  5. Cut and paste that code into a new HTML file you distribute.  That's all you need to do!



You can see a [page in action](http://technofetish.net/buffaloblog/wp-content/uploads/2010/02/sample.html) as well as [the student view](http://technofetish.net/buffaloblog/wp-content/uploads/2010/02/sample_raw.html).

What do you think?  Is this the easiest way?  For the curious, here is the [source code](http://technofetish.net/buffaloblog/wp-content/uploads/2010/02/tacrypt.js).
