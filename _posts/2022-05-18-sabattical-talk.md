---
title: Sabbatical Talk
categories:
- Programming
- Teaching
- Operating Systems
---

# Sabbatical Talk - Challenges of a Unified OS Curriculum

The notes for this talk are here: https://bit.ly/3Lolxgn


# The Problem

## My general curricular philisophy: intense focus

+ Pick a small number of critically important things
+ Design your class to study those things very hard
+ Assess those things very carefully
+ Remove extraneous topics

## I am not an OS guy

## OS has many many traditional topics

e.g. Different kind of schedulers

+ Key part of an OS that determines what programs run on a millisecond
  by millisecond basis
+ Some straightforward algorithms to do this
+ More modern realistic algorithms not straightforward but cool
+ Almost no student will ever, ever write a scheduler

How valuable is this topic?




# The Dream

+ OS tends to involve these very intricate assignments, very costly to build
+ So I'll build some, working with the experts & understand what's important
+ The universe: nope nope nope nope nope




# The World is on Fire

## My Duke OS class is moving fully on line
It is clearly not setup for online

+ All lectures
+ No in-class activities or assessments
+ A few major projects
+ But most of the grades are based on exams, which we do not want to
  do due to significant cheating issues

## My main co-professor is the director of graduate studies for Duke CS

Ahhhhhhhh

# Building so many assignments

## Switched it out for a project course with much smaller assignment structure

Still less frequent assignments than the Rose-equivalent course.  We work our students hard!

## Reused the assignments they had, plus tons of Rose's plus developed some new ones
## Particularly fun: lock free data structures

Hint: do not build lock free data structures, you will not do it right

https://rosehulman-my.sharepoint.com/:f:/g/personal/hewner_rose-hulman_edu/Eokpes7zNfFDpF6dHScxgFMBxH6h7zIetw6QDTnq8K1Zkw?e=FU2Vpr

## Weekly "live" lecture - with living coding

Everybody loves active learning!

https://replit.com/@hewner/

## Relied on sketchy internet startup for our test infrastructure

Such an obviously bad idea

# The happy ending (earily)

## Students were happy, and passed, and seemed to learn something

+ No idea how it compares to the traditional course
+ I think a lot of my suggested changes worked out very well
+ We had engagement down the very end
+ Even though courses with a *lot* of assignments is not the Duke norm
+ Graduate students were not nearly so happy

+ Duke was happy with me, and I was happy with them

## Jeff and Danyang, my cool co-professors you guys are amazing!

Jeff Chase - who I saw eye-to-eye with 80% of the time, but that's not
what makes for an interesting talk is it?

https://users.cs.duke.edu/~chase/

Danyang Zhuo - brand new Assistant Professor, I hope I was able to
make your first Duke class a little less stressful.

https://danyangzhuo.com/

Both of these guys have more knowledge of OS in their pinky finger
than I have in my whole brain.

# Philisophies of Teaching

## Did students learn this topic we just did?

### Jeff: "I talked about it for 15 minutes so probably"
### Me: 90% of the students scored 90% on the assignment - but probably no
### Really more about where we're focusing in the class

+ I'm thinking about the weakest 25%
+ He's thinking about the top 10%

## Knowledge vs Skill Focus

### Knowledge

Jeff built a very broad OS curriculum.  It included even some pretty
esoteric networking and distributed systems based topics.  The reason
he wanted these topics in was because this was the students only
system class.

He also knew a *ton* about every imaginable OS area and naturally saw
it as intricately interconnected

### Skill

I wanted to see everything as related to a small set of skills.

Eventually I was able to put my finger on what I considered the
essence - the building of abstractions based on deep knowledge of the
low-level

I was very worried about anytime students seemed to be failing at the
implementation level because it made me think they weren't really
developing this skill

### An example: docker

Very first paper we did for graduate students, talking about the
security model of docker

I thought you maybe could build a whole operating system course based
on this.  Implement a container system, dive into the details of
scheduling, relationship between containers and processes, play with
security model and discuss exploits etc.

None of this made much sense to Jeff.  Why not just learn Docker *and*
everything were were already teaching?

# My idea for radically unifying the curriculum

## A few fundimental skills that we are trying to develop

+ memory
+ concurrency

You wouldn't have to pick these in particular, though I think that
they are good ones.  I've also seriously considered "debugging".

## "Traditional" OS topics deployed in service of developing these skills

e.g. we might cover filesystems because they allow us to build
assignments that stress students' use of memory structures.  Or we
could do a similar thing by having them build allocation systems

Curriculum:

Easy Memory Assignment -> Malloc/Free implementation
Medium Memory Assignment -> Filesystems
Hard Memory Assignment -> OS level allocation from scratch
Easy Concurrency Assignment -> OS implementation of locks
Medium Concurrency Assignment -> Use of Condition Variables
Hard Concurrency Assignment -> Lock Free Data Structures

You can see the order of the topics don't make sense, except as a
vechicle for the skills.

## "Reify" the implicit ideas that we take for granted

+ Pointer operations, pointer math and motion 
+ Memory structures, traversal and casting 
+ Alignment 
+ Stack and its structure, heap and its structure <= this one is traditional
+ Correctly freeing memory 
+ Design of memory structures for efficiency <= this one kinda traditional
+ Representation of programs <= this one is not traditional, but I'm not sure why
+ Virtual Memory and how processes can exist 

## Finally a unifying model that makes sense with learning goals!

But very *my* style, not a compromise

# Pitching that idea to Duke

My pitch

https://rosehulman-my.sharepoint.com/:w:/g/personal/hewner_rose-hulman_edu/EetY1A3_aCRFlUCYNc5BgC4BfNhpzRqEqtQssg_twFlqZg?e=vUcMQg

Jeff was not super interested - but did suggest that maybe I'd be
interested in working on a new more basic level system course that was
being developed.

## Worked with an ECE prof and he did seem interested

Dr. Alvin "Avly" Lebeck

https://ece.duke.edu/faculty/alvin-lebeck

We speced out some assignment and what they could look like.  I even
built an explemlar one to give him a feel.

Alvy has a very hard job here, trying to please many stakeholders.
And a major innovative redesign interferes with a key goal of the
course.

# My takeaways (is nothing clear?)

## Optimism vs. Pessimism | Knowledge vs. Skills

My personal pet peeve

    Goals for the course:

    ...stuff...
    17.  Write code to solve problems in an efficient flexible way
    ...stuff...

My whole life is that #17.

I think you've got to really understand where you are in these
continua, and where you're going to be in terms of learning goals for
the course.

Before this experience I would tend to get extremely aggravated
anytime I saw course learning goals with more than 5 items in it.  But
now that I saw just how frantically Jeff would work to (say) get 1 day
of networking in an intro systems class...

What I really don't know is how you can get 20 passionate professors
to agree on this in any meaningful way.

But it helps if we're aware I suppose.

## My blind spots

After my experience working with Jeff, I have been wondering if my
course designs provide enough depth for the top 20% of students.

I tend to take the position that the fundimental "skills" are
infinitely deep.  E.g. as I teach OS courses, my understanding of
memory continutes to grow more nuanced.

But its true that my courses do thend to quickly "max out" with 50% of
the students getting As.  And I do spend a lot of time agonizing about
that lower 25%.

## I still think that curriculum is kinda good!

...and maybe a good way to organize what previously seemed
un-organizable to me.

Turns out I might not get to implement it at Rose.  I'm teaching
mostly programming languages now.  With plenty of similar problems,
but not the same.

## There were several key specific gains not so interesting

Biggest one - switch from Semaphores to Condition Variables

...but as you can see I am still up to my old tricks

https://rosehulman-my.sharepoint.com/:w:/g/personal/hewner_rose-hulman_edu/EVgWFv9_zhhEucugYOzHQL4BQHb7j70gMyQJuT1K0BOiGw?e=SKxPcR
