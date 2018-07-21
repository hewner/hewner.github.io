---
author: phewner
comments: true
date: 2006-07-08 05:31:18+00:00
layout: post
permalink: /2006/07/07/darcs-ssh-problem/
slug: darcs-ssh-problem
title: darcs ssh problem
wordpress_id: 31
categories:
- Worklogs
---

While trying to set up a remote darcs server (accessed via ssh), I ran into a strange problem.  Here's the error I got:



<blockquote>
me@toy:~/buffaloplay$ ssh-agent darcs get remote_me@technofetish.net:buffaloplay/
remote_me@technofetish.net's password:
remote_me@technofetish.net's password:

darcs failed:  (sftp) failed to fetch files.
source directory: buffaloplay/_darcs/patches
source files:
20060708025035-572da-3d875518382f23ca03e6e6f8c11b522d10a0e4a0.gz
sftp output:
Permission denied (publickey,gssapi-with-mic,password).
Couldn't read packet: Connection reset by peer
</blockquote>





Looking around a bit online, it seems that I'm not the first one to have this problem but I couldn't find an obvious workaround.  But configuring myself to you ssh-agent fixed the problem, even if it wasn't exactly the most elegant solution.  Here's the [quick guide to setting up ssh agent](http://www.arches.uga.edu/~pkeck/ssh/) that I used.

After that darcs worked like a charm.
