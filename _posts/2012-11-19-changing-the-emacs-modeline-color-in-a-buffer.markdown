---
author: phewner
comments: true
date: 2012-11-19 22:55:27+00:00
layout: post
permalink: /2012/11/19/changing-the-emacs-modeline-color-in-a-buffer/
slug: changing-the-emacs-modeline-color-in-a-buffer
title: Changing the Emacs Modeline Color in a Buffer
wordpress_id: 689
categories:
- Programming Stuff
- Worklogs
---

I wanted to have the color of my term-mode mode line switch, depending on whether I was in character mode or line mode.  I'm not sure why this became an overwhelming desire of mine, but it did.  Not really knowing anything about emacs font faces, themes, or anything I pulled up my debugger and started spelunking in [color-theme-buffer-local](https://github.com/vic/color-theme-buffer-local).  I discovered a mysterious function face-remap-add-relative designed to do exactly what I wanted - let me remap a particular part of a single buffers theme and then undo that mapping when finished.

A smarter person might have checked [the emacs manual](http://www.gnu.org/software/emacs/manual/html_node/elisp/Face-Remapping.html) and saved himself a lot of time.

Here's how it works:
`
;; set the modeline background color and save a "cookie" so the change can be undone
(setq old-term-color (face-remap-add-relative 'mode-line :background "dark goldenrod"))

;; undo that change later
(face-remap-remove-relative old-term-color)
`

Interestingly, I'm pretty sure this ability to change colors for a specific buffer is one of the new features of Emacs 24.  Yay progress.
