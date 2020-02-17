---
title: Implementing Fork and Copy-On-Write in Userspace
categories:
- Programming
- Teaching
- Operating Systems
---

So this is a follow-on assignment to the [assignment described
here](2019-03-15-virt-mem-assign.md).  Altogether they make up about 1
full week of homework in my intro OS class, but everybody's mileage is
different.

In the [virtual memory 2
lab](https://github.com/RHIT-CSSE/csse332/tree/master/Homework/VirtualMemoryLab2),
they use an embedded forth virtual machine again but this time the VM
allows multiple instances.  The goal is to make forking and
copy-on-write possible for the forth instances.

What I really like about this lab is that in the process of doing
this, it naturally lends itself to rediscovering the idea of page
tables, frames, pages etc.  So it very much acts as a primer for
virtual memory - but in userspace rather than implementing an OS.

It relies on an obscure feature of mmap that allows you to map 2
regions of a program's virtual space to the same physical memory.
Students find this relatively confusing though, despite my attempts to
explain it.  If I have a chance to revise, I might consider just
building a tiny library that hides this detail.

Students also find the implementation of Step 2 quite mentally
challenging, but I've yet to figure out a what's missing in my
explanation.

Overall I think this assignment is good though maybe a little on the
hard side.



