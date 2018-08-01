---
title: Emacs Compile Commands That Output To A Shell
categories:
- Programming
- Worklogs
---

I like use emacs for my terminal (using emacs multiterm) and for my
development.  But when I'm compiling, I often prefer to use the
terminal...except that jumping to error no longer works.

What I really want is emacs editor command that sends a compile
command to some terminal, and then parses the result for error
highlighting.

Luckily there's compilation-shell-minor-mode, seemingly designed for a
mix of terminal and compiler.  But getting the command send to work
reliably was sort of tricky.

The main compromise I had to make was the compilation terminal gets
cleared every time you run a command.  Otherwise jumping to error
could end up at old errors.

<script src="https://gist.github.com/hewner/367b32710aec7a07791a0a299ec748bf.js"></script>




