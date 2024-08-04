+++
date = "18 Jul 2024"
draft = false
title = "Congratulations, Dr. Suri!"
author = "David Evans"
categories = ["graduates"]
tags = ["Anshuman Suri", "privacy", "adversarial machine learning", "membership inference", "distribution inference", "privacy-preserving machine learning", "PhD defense", "Alina Oprea"]
+++

Congratulations to [Anshuman Suri](https://www.anshumansuri.com/) for successfully defending his [PhD thesis](https://libraetd.lib.virginia.edu/public_view/2227mr11j)!

<center>
<img src="/images/suri-phd.png" width="70%"><br>
Tianhao Wang, Dr. Anshuman Suri, Nando Fioretto, Cong Shen<br>
On Screen: David Evans, Giuseppe Ateniese
<br>
</center>

##


##

<center>
<em>
Inference Privacy in Machine Learning
</em>
</center>

##

Using machine learning models comes at the risk of leaking information about data used in their training and deployment. This leakage can expose sensitive information about properties of the underlying data distribution, data from participating users, or even individual records in the training data. In this dissertation, we develop and evaluate novel methods to quantify and audit such information disclosure at three granularities: distribution, user, and record.

We begin with a formalization of inference privacy risks as cryptographic games and draw relations, such as reductions and separations, between various types of inference risks. We then propose a formal definition of distribution inference attacks that captures previous ratio-based property inference attacks as well as new kinds of attacks, and introduce a metric that quantifies observed leakage. We devise novel white-box and black-box distribution inference attacks and report on a series of experiments across a range of different distributions. We also evaluate the effectiveness of previously proposed defenses, finding that noise-based defenses are ineffective. Next, we estimate inference risk at the user level in Federated Learning scenarios with our attacks and demonstrate potent leakage. We also propose methods for injecting malicious behavior in the pre-training stage of a model, whereby selective parameters can be trained to activate differently on particular data to amplify distribution inference in downstream models. At the individual record level, we prove the necessity of parameter access for optimal membership inference, challenging the notion that black-box attacks suffice. Finally, we use membership inference to study memorization in Large Language Models (LLMs), observing near-random inference leakage for most settings, but revealing a connection between distribution inference and membership inference.

Our findings show that privacy leakage spans a spectrum of granularities, making it essential to consider multiple forms of leakage. Ultimately, our work underscores the urgent need for robust privacy-preserving techniques to mitigate these multifaceted risks in machine learning systems.

Dissertation: [_Inference Privacy in Machine Learning_](https://libraetd.lib.virginia.edu/public_view/2227mr11j)

[Presentation Announcement](https://engineering.virginia.edu/news-events/events/phd-defense-presentation-anshuman-suri)

[Twitter](https://x.com/iamgroot42/status/1814033241688428695)

#
Dr. Suri will start a post-doc with [Alina Oprea](https://www.khoury.northeastern.edu/home/alina/) at Northeastern University this fall.

# 

**Committee:**  

Tianhao Wang (Committee Chair, Computer Science)  
David Evans (Advisor, Computer Science)  
Nando Fioretto (Computer Science)  
Cong Shen (Electrical and Computer Engineering)  
Giuseppe Ateniese (George Mason University)

