---
author: phewner
comments: true
date: 2016-05-27 15:24:31+00:00
excerpt: So here's a bunch of small problems that use semaphores
layout: post
permalink: /2016/05/27/a-few-semaphore-based-programming-problems/
slug: a-few-semaphore-based-programming-problems
title: A Few Semaphore Based Programming Problems
wordpress_id: 787
categories:
- active learning
- Teaching
---

I'm a big believer in practice when it comes to learning programming techniques.  Although this seems obvious, it tends to go against the grain for most developer/teachers (like me) who love cool projects.  What's the best way to learn (say) scheduling?  Write a scheduler!  Our students did write a scheduler in OS, but they probably spend 90% of their time dealing with weird C mistakes and about 10% actually thinking about scheduling.  More importantly, they only wrote 1 scheduling algorithm.  If you really care, they have to write 10 scheduling algorithms.  I didn't care that much about them being able to code schedulers, but I did care about them being able to use semaphores.  So I needed a bunch of tiny semaphore assignments.  I'm sure I'm not the first teacher to do so, but I couldn't find ones online when I looked.

So here's a bunch of small problems that use semaphores.  Some of these I used as 2 semaphore homework assignments, some of these I used as semaphore exam questions.  If I were to try and arrange them easy-to-hard, it would be: threeAndTwo, abcd, hammerAndSaw, littleRedHen, balloon, printerQueue, producerConsumer, pair.  Solutions are available too, if you email me.

Thanks to Ian Ludden who write littleRedHen and balloon for me.  Also, a shout out to Allen B. Downey who's awesome free book [The Little Book of Semaphores](http://www.greenteapress.com/semaphores/) is maybe the best treatment of the topic I've seen.  I would love to go through that entire book in my class, but there's not enough time in the current incarnation.

If you have any problems of your own, please send them my way!  My students could use the practice!

[Go here for the files.]({{site.repository_url}}/tree/master/files/semaphore_probs)
