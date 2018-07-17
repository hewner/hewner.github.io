---
author: phewner
comments: true
date: 2010-01-05 02:17:07+00:00
layout: post
link: http://hewner.com/2010/01/04/the-llamas-of-computing/
slug: the-llamas-of-computing
title: 'The Llamas of Computing: A P/NP Fairytale'
wordpress_id: 109
categories:
- Teaching
---

<blockquote>As part of my continuing obsession, I had the thought that it might help things if I had a story that people could related to.  One of the tricky things about P/NP is everything has non-obvious names and the relationships (i.e. problem reducibility, problem runtime) are not something non-CS people think about.  I played around with a couple of metaphors and this one was the one I liked the most.  My only regret is that there's really no llama equivalent of a verifier.

My original thought was that I would use this story as an introduction, and then have it structure the rest of the lesson.  Now that's it's fully written out I wonder if it's a bit long and involved for that.  A homework assignment beforehand?  With a few questions at the end to make sure you've thought through all the details?  Or is it just too patronizing to make people do homework with made up fairy stories?</blockquote>






Once upon a time, there was a giant mountain range.   And in this giant mountain range there was  city.  And in this city was a tribe of people.   And this tribe of people was called the Llama Scientists.

The Llama Scientists were a hearty people, and they loved nothing better than to travel out from their city and explore the mountains.  The mountains were filled with treasures: gold, platnum, jewels, DVD players and boulders that were shaped like various celebrites – everything was out there in the mountians if you knew where to look.

But the treasures were all very heavy, and the Llama Scientists moderately lazy, and so all the treasure would have remained in the mountains if not for the Llamas.  The Llamas could carry the treasures back to the city.  But Llamas, not being very smart, had to have a path.  And it was important that the path not be too long – otherwise there was no way for a Llama overburdened with treasure to make the trip back to the city.

So the Llama Scientists soon became great experts at finding short paths for the Llamas to take.  And the city soon was overflowing with treasure.  The city became as rich as a kingdom, and being like a kingdom, needed to have borders.  And so the Mayor set forth a Mayorial Decree:

**Let all the land to which a llama may traverse in a reasonable amount of time be called P (“P” being short for “Polynomial”, which means “short” in the Llama Scientists simple but beautiful language).  P will be the kingdom of the Llama Scientists, this I decree.
**


* * *



So now the Llama Scientists had a kingdom called P.  But the kingdom borders infurated the royal cartographers.  Clearly, all the land that Llama scientists had found a short path to, that was in the kingdom P.  And it might be reasonable to think that Llamas could not fly off to the clouds or cross over an ocean.  But that still left a great big chunk of land that still might be in P, just no one had ever found a path yet.
Having nothing better to do, the called this mysterious land NP.  They had names for the clouds and the oceans too, but those are not important for this story.

**Let all the land to which a llama might traverse, but no path has yet been found, be called NP.  NP is the mysterious land of possibility, because at any moment a path may be found that makes something that was in NP part of P.
**


* * *



As Llama Scientists scouted more and more, there were certain rich mountian treasures they longed to find a short route for.  But as years of Llama Scientists searched for the paths and found nothing, the more pragmatic Llama Scientists started to believe there was no short path at all.  But everyone was infuriated that there was no way to _prove_ that no short path existed, not even for one mountian in the realm of NP.

It might have remained that way forever, were it not for one smart Llama scientist called Cook.

Cook was climbing a mountian in NP called “Satisfiablity” that had been climed many times before.  But when he got to the top, he noticed something no one had ever noticed before.  Coming down from Mt. Satisfiablity were llama paths: one-way llama paths that led _from Satisfiability_ to the top of every other mountian in NP.

**If a short path could be found for Satisfiability, a llama could travel from there to every other mountian in NP.  So Satisfiability was “NP-Complete” in that a path for Satisfiability was a path for every other mountian in NP. If Satisfiability had a short path, then the kingdom of P encompassed all of NP.
**


* * *



Cook’s discovery was big news.  But then other Llama Scientists noticed something interesting: certain mountians had short paths _to_ the top of Satisfiability.  A llama reaching the top of those mountians could quickly travel to Satifiability - and then to any mountian in NP.  All these mountains were NP-complete as well.

**Any mountian that has a path to a NP-Complete mountian is itself NP-Complete.**



* * *



Many of the mountains that turned out to be NP-Compelete were mountains that people had been trying to find a path to for a long time.  These were the hardest mountains in all of NP.

**Most Llama Scientists believe that there is no pratical point in trying to find paths to NP-Compelete mountains, because so many have tried and failed before.  So showing that a mountian is NP-Complete is almost like saying “there is no short path”.
**

But no one is really happy with this.  If no short path exists to the NP-Complete mountains, it would be nice to prove that for sure.  If there is a short path to one of the NP-Compelete mountains, it would revolutionize Llama science: all the treasures in all the NP-Complete mountains would be open to the Llama Scientists.

**Llama scientists often say “Does P = NP?”.  What they mean is “is there a short path to every mountian in NP?”  If P does not equal NP, it must be the case that there is no short path to any of the NP-Compelete mountains.**

