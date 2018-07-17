---
author: phewner
comments: true
date: 2006-06-07 03:33:27+00:00
layout: post
link: http://hewner.com/2006/06/06/usrincludesystypesh62-error-conflicting-types-for-xf86dev_t/
slug: usrincludesystypesh62-error-conflicting-types-for-xf86dev_t
title: '/usr/include/sys/types.h:62: error: conflicting types for ''xf86dev_t'''
wordpress_id: 29
categories:
- Worklogs
---

So I was seeing some strange errors while attempting to build my new x keyboard driver with some new standard unix headers built in. 
<!-- more -->
 `   /usr/include/sys/types.h:62: error: conflicting types for 'xf86dev_t'
    /usr/include/xorg/xf86_libc.h:87: error: previous declaration of 'xf86dev_t' was here
    /usr/include/sys/types.h:110: error: conflicting types for 'xf86ssize_t'
    /usr/include/xorg/xf86_libc.h:86: error: previous declaration of 'xf86ssize_t' was here
    In file included from /usr/include/sys/uio.h:24,
    from /usr/include/sys/socket.h:27,
    from buffalokeys.c:53:
    /usr/include/sys/types.h:151: error: duplicate 'unsigned'
    In file included from /usr/include/limits.h:152,
    from /usr/lib/gcc/i486-linux-gnu/4.0.3/include/limits.h:122,
    from /usr/lib/gcc/i486-linux-gnu/4.0.3/include/syslimits.h:7,
    from /usr/lib/gcc/i486-linux-gnu/4.0.3/include/limits.h:11,
    from /usr/include/bits/socket.h:31,
    from /usr/include/sys/socket.h:35,
    from buffalokeys.c:53:
    /usr/include/bits/xopen_lim.h:95:6: error: missing binary operator before token "sizeof"
    /usr/include/bits/xopen_lim.h:98:7: error: missing binary operator before token "sizeof"
    /usr/include/bits/xopen_lim.h:122:6: error: missing binary operator before token "~"
    In file included from buffalokeys.c:55:
    /usr/include/stdlib.h:622:24: error: macro "abort" passed 1 arguments, but takes just 0
    In file included from buffalokeys.c:56:
    /usr/include/string.h:293: error: conflicting types for 'xf86memmove'
    /usr/include/string.h:44: error: previous declaration of 'xf86memmove' was here
    /usr/include/string.h:296: error: conflicting types for 'xf86bzero'
    /usr/include/xorg/xf86_ansic.h:294: error: previous declaration of 'xf86bzero' was here
    In file included from buffalokeys.c:57:
    /usr/include/unistd.h:312: error: conflicting types for 'xf86read'
    /usr/include/xorg/xf86_ansic.h:272: error: previous declaration of 'xf86read' was here`

This little bug drove me to near madness. What the hell was going on? You smarter people have already realized the solution of course - somewhere in the X headers, somebody had #defined some standard unix stuff to some xfree86 specific stuff. Because I included my headers after these xfree86 headers, the #defines started screwing with everything. The solution to my problem?
**
Include the standard unix headers before you include any crazy xfree86 specific stuff.**
