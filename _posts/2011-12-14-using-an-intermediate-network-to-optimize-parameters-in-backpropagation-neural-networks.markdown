---
author: phewner
comments: true
date: 2011-12-14 22:21:53+00:00
layout: post
permalink: /2011/12/14/using-an-intermediate-network-to-optimize-parameters-in-backpropagation-neural-networks/
slug: using-an-intermediate-network-to-optimize-parameters-in-backpropagation-neural-networks
title: Using an Intermediate Network to Optimize Parameters in Backpropagation Neural
  Networks
wordpress_id: 586
---

This is a post not really about what I did, but what 3 of the high-school students I worked with did.  I met Gil and Claus in my automata class at GHP this summer.  As part of the summer research project, they worked on developing their own kind of automata and ended up with something similar to a Neural Network.  This fall, Gil, Claus, and Anirudh contacted me and proposed continuing that research but expanding the neural network connection for the Siemens Science Competition.  Although I agreed to advise them where I could, this project was basically completely done start-to-finish by Gil, Claus, and Anirudh.

What eventually came out of this project was an attempt to build a Neural Network capable of optimizing the parameters of other neural networks.  As the paper says:



<blockquote>
The fundamental goal of this project is to create a backpropagation neural network that can determine the optimal training parameters to train another neural network with a different goal based on only characteristics of the training data.  Such a neural network has the capability of improving the accuracy and speed of the training process for backpropagation networks used for any application.    
</blockquote>



In order to accomplish this Gil, Claus, and Anirudh researched neural networks, programmed their own network framework from scratch, and attempted to design a neural network that could help optimize other neural network parameters.  Unfortunately the result they got was that the intermediate network wasn't able to optimize properly.  My opinion is their approach still has merit, and whether or not they get back to this particular project I hope they weren't too disappointed with the negative result.  This was a very cool project that required a great deal of both math and Computer Science to accomplish.
