+++
date = "26 Jul 2022"
draft = false
title = "Visualizing Poisoning"
author = "David Evans"
categories = ["research"]
tags = ["Evan Rose", "Fnu Suya", "poisoning attacks", "adversarial machine learning"]
+++

_How does a poisoning attack work and why are some groups more
susceptible to being victimized by a poisoning attack?_

We've posted work that helps understand how poisoning attacks work
with some engaging visualizations:

[Poisoning Attacks and Subpopulation Susceptibility](/poisoning)  
_An Experimental Exploration on the Effectiveness of Poisoning Attacks_  
Evan Rose, Fnu Suya, and David Evans

<center>
<img src="/images/visualizingpoisoning.png" width="85%"><br>
Follow <a href="/poisoning">the link</a> to try the interactive version!
</center>

#

Machine learning is susceptible to poisoning attacks in which
adversaries inject maliciously crafted training data into the training
set to induce specific model behavior. We focus on subpopulation
attacks, in which the attacker's goal is to induce a model that
produces a targeted and incorrect output (label blue in our demos) for
a particular subset of the input space (colored orange). We study the
question, which subpopulations are the most vulnerable to an attack
and why?


