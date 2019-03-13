---
title: Virtual Memory Assignment for an OS Class using Forth
categories:
- Programming
- Teaching
- Operating Systems
---

 I've been experimenting with using an embedded forth virtual machine
 to teach OS concepts in a fairly low level way without having to
 implement parts of a real kernel.  A jitted VM is actually pretty
 similar to an operating system in that it needs to execute raw
 assembly, but maybe wants to provide features and prevent the VMed
 program from running amok.
 
 In this [virtual memory
 assignment](https://github.com/RHIT-CSSE/csse332/tree/master/Homework/VirtualMemoryLab)
 students run forth code but don't allocate any memory for the stack
 or heap.  Then they trap segmentation faults and allocate the missing
 memory as the VMed program tries to use it.  In the second step they
 write rarely used pages to the disk and remap them as needed.
 
 The forth I used was the very-cool
 [jonesforth](https://rwmj.wordpress.com/2010/08/07/jonesforth-git-repository/)
 modified in a pretty serious way to let be embedded in C rather than
 as a standalone assembly application.



