---
author: phewner
comments: true
date: 2016-05-25 18:57:18+00:00
excerpt: What I decided on was lectures, supplemented by a textbook, followed by weekly
  programming assignments were students had to write scripts that used git commands
  (and parsed the output).  This was a course for moderately senior students who had
  used the basics of git and could pick up a new scripting language easily.
layout: post
link: http://hewner.com/2016/05/25/1-credit-course-in-git/
slug: 1-credit-course-in-git
title: 1-credit course in GIT
wordpress_id: 782
categories:
- active learning
- Teaching
---

This spring I decided to try something I've been mulling over for a long time - a 1-credit course in GIT.  1-credit CSSE classes at Rose tend to be minor affairs...generally just for student fun and not affecting graduation.  Of course, we already use git in many classes at Rose-Hulman, but you usually can't cover anything in more detail than basic checking-in, checking-out, and conflict resolution. 

10 classes was a bit on the longish side...I think you definitely could have done the topics in 7ish-classes if you wanted to compress, and the curriculum will always tighten with time.  I do think that it's wishful thinking to expect students to be good at git with just a lecture or two and some sort of highly structured tutorial.

The design of the course also was a challenge.  Lecturing about command line tools is not usually effective - you have to use it to get good.  I toyed with the idea of making a series of broken repo states that the students would have to fix/debug, but decided it would be too much work (if anybody would like to help me by make a library of 45 or so....feel free to get in contact with me, I still think that could be good).  What I decided on was lectures, supplemented by a textbook ([Git Pro](https://git-scm.com/book/en/v2)), followed by weekly programming assignments were students had to write scripts that used git commands (and parsed the output).  This was a course for moderately senior students who had used the basics of git and could pick up a new scripting language easily.

**Git homework assignments**:



	
  * [Plumbing 1](http://files.hewner.com/2015-2016/gitclass/HomeworkCode/Plumbing1/Plumbing1.html) - grep for strings in particular trees (apparently git grep does this automatically but no matter)

	
  * [Plumbing 2](http://files.hewner.com/2015-2016/gitclass/HomeworkCode/Plumbing2/Plumbing2.html) - make a commit history from a series of SHAs

	
  * [Reset and Stash](http://files.hewner.com/2015-2016/gitclass/HomeworkCode/ResetAndStash/ResetAndStash.html) - 3 little scripts involving the commands

	
  * [Merging](http://files.hewner.com/2015-2016/gitclass/HomeworkCode/Merge/merge.html) - automatically merge two branches in a crude way

	
  * [Rebase](http://files.hewner.com/2015-2016/gitclass/HomeworkCode/RebaseVerbosely/RebaseVerbosely.html) - rebase but show what commits change shas

	
  * [History Rewriting](http://files.hewner.com/2015-2016/gitclass/HomeworkCode/HistoryRewrite/historyrewrite.html) - a simple interactive rebase and a use of filter branch

	
  * [Branches and Push/Pull](http://files.hewner.com/2015-2016/gitclass/HomeworkCode/PushAllBranches/PushAllBranches.html) - pull all local branches to a remote

	
  * .gitconfig - write your own gitconfig



(solutions are available if you email me)

Overall, I thought it worked pretty well.  I'd like to maybe refine a few of the assignments and maybe get some more in class activities.  I'd even like to do an "exam" - probably not for student credit, but just so I can assess how well this is all working.

The students also generally seemed to enjoy the class (well, I had a few drop out because they didn't want to do the homework, but that didn't stress me out particularly much).  I'll know a little more when student evals come back in a few weeks.

My [complete lecture notes are here](http://files.hewner.com/2015-2016/gitclass/ClassOutline.html), if you'd like to use them for something.

Anything I missed that you would cover in your 1-credit git class?  Any great ideas for assignments (they should be easy to code, and exercise the commands under question well)?  Comments welcome!
