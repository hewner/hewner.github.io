---
author: phewner
comments: true
date: 2010-02-10 00:26:11+00:00
layout: post
permalink: /2010/02/09/an-example-of-exponential-runtime/
slug: an-example-of-exponential-runtime
title: An Example of Exponential Runtime
wordpress_id: 135
categories:
- Worklogs
---

This is a question any theory-oriented friends of mine should feel free to jump in on.

So I wanted to make some graphs for explaining Big O.  And I wanted to include exponential functions on that graph.  But unlike my previous examples of such things, I didn't want to say "oh wow, look at this graph of 2^n....see how terrible it is" because I know that [real exponential functions in practice are often much happier than 2^n](http://rjlipton.wordpress.com/2010/02/05/a-2010-algorithm-for-the-knapsack-problem/).  I wanted real run-time data, ideally using source code from some trustworthy seeming source (i.e. not me).

"So heck," said I, "surely Mathematica has implementations of some of these famous NP-Complete problems.  I'll run some of those and I think that that's at least plausibly trustworthy."  So I poked around and found some graph algorithms - specifically traveling salesman and Hamiltonian cycle.

Then came the difficulty of generating good problem examples.  I initially thought I'd just use random graphs but the runtime varied so much it just wasn't reasonable.  Then I noticed that if I passed in complete graph to Hamiltonian Cycle with one completely disconnected vertex, the Hamiltonian Cycle algorithm would be pretty dang slow:

[![](http://technofetish.net/buffaloblog/wp-content/uploads/2010/02/hamcycle.png)](http://technofetish.net/buffaloblog/wp-content/uploads/2010/02/hamcycle.png)

But was it really exponential?  This is where I'm stuck.  I don't really understand the algorithm that's generating these solutions - for all I know it might be detecting the disconnected vertex (albeit somewhat late) and might be evidencing merely some (bad) polynomial time.



{% raw %}
>     
>     HamiltonianCycle[g_Graph,flag_:One] :=
>     	Module[{s={1},all={},done,adj=Edges[g],
>                     e=ToAdjacencyLists[g],x,v,ind,n=V[g]},
>     		ind=Table[1,{n}];
>     		While[ Length[s] > 0,
>     			v = Last[s];
>     			done = False;
>     			While[ ind[[v]] < = Length[e[[v]]] && !done,
>                                    x = e[[v,ind[[v]]++]];
>                                    done = !MemberQ[s, x] && 
>                                            (Length[s] == 1 ||
>                                             BiconnectedQ[DeleteVertices[AddEdges[g, {{1, x}}], Rest[s]]])
>     			];
>     			If[done, AppendTo[s,x], s=Drop[s,-1]; ind[[v]] = 1];
>     			If[(Length[s] == n),
>     				If [MemberQ[adj, Sort[{x, 1}]],
>                                         AppendTo[all,Append[s,First[s]]];
>                                         If [SameQ[flag,All],
>                                             s=Drop[s,-1],
>     					all = Flatten[all]; s={}
>     			            ],
>     			            s = Drop[s,-1]
>     				]
>     			]
>     		];
>     		all
>     	]
> 
> 
{% endraw %}


Does that look familiar to anyone?  Any guesses to Big-O for this kind of input?

OR - say you wanted to provide an example of real running exponential function.  What would you use instead of my Hamiltonian Cycle hack?
