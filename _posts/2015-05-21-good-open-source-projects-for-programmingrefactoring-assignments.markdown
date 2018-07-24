---
author: phewner
comments: true
date: 2015-05-21 19:24:14+00:00
layout: post
permalink: /2015/05/21/good-open-source-projects-for-programmingrefactoring-assignments/
slug: good-open-source-projects-for-programmingrefactoring-assignments
title: Good Open Source Projects for Programming/Refactoring Assignments
wordpress_id: 764
categories:
- Teaching
---

So CSSE375 is a Rose-Hulman course focused on refactoring ([course notes here](https://github.com/hewner/csse375/tree/master)).  As a result, I like to have the students make changes to existing open source projects.  This gives them a little experience with codebases of a realistic size, and it makes the assignments feel a little more authentic.

I generally like Java projects that can be made to build automatically in Eclipse.  Not by any means a deal breaker but Java is the language they know best so it lets me focus on the concepts easiest.  Eclipse is not really a requirement but it has to build really easily because otherwise I end up debugging 45 different weirdo build problems.

Here's a few that have worked for me:


	
  * [Argo UML](http://argouml.tigris.org/) - a really big project which is great (although it makes submissions a pain).  A UML editor with some very weird use of objects in places.  Here's [the assignment I used](https://github.com/hewner/csse375/tree/master/Code/ArgoUML/) - and here's the [eclipse workspace source I used](https://github.com/hewner/csse375/tree/master/Code/ArgoUML/workspace-argouml.zip) in case you don't want to check it out yourself.  The force based aspect of the assignment is maybe too fussy an algorithm...if I had to do it again I might do something a little simpler.

	
  * [Cleansheets](http://csheets.sourceforge.net/) - a great java spreadsheet that is quite reasonably designed.  Builds very easily.  The [assignment I used was this one](https://github.com/hewner/csse375/tree/master/Code/CleanSheets/) but I've since [released the solution](https://github.com/hewner/csse375/tree/master/Code/CleanSheetsSolution/) so I wouldn't go reusing it on anything important.  But I would use it again on another assignment.

	
  * jFTP - this one's codebase has a LOT of duplication in it...great if you want to pratice some refactoring techniques.  Here's [the assignment I used](https://github.com/hewner/csse375/tree/master/Code/j-ftp/) and [I modified the codebase slightly](https://github.com/hewner/csse375/tree/master/Code/j-ftp.zip) to make testing harder and make the project build easily in Eclipse.

	
  * [BORG](https://mikeberger.github.io/borg_calendar/) - another large codebase, in this case a calendaring program.  Unfortunately, annoying to build because students must install the lombok library.  Here's [an assignment I did using it anyway](https://github.com/hewner/csse375/tree/master/Code/BORGEmail/).



If you're looking for a more straightforward refactoring assignment, here's what I started my students with - Calender Parse [Part 1](https://github.com/hewner/csse375/tree/master/Code/CalendarParse/) & [Part 2](https://github.com/hewner/csse375/tree/master/Code/CalendarParse/part2.html). 




