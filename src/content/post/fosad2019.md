+++
date = "28 Aug 2019"
draft = true
title = "FOSAD Trustworthy Machine Learning Mini-Course"
author = "David Evans"
categories = ["talks", "courses"]
tags = ["privacy", "adversarial machine learning"]
slug = "fosad2019"
+++

I taught a mini-course on _Trustworthy Machine Learning_ at the [_19th
International School on Foundations of Security Analysis and
Design_](http://www.sti.uniurb.it/events/fosad19/) in Bertinoro, Italy.

<center><a href="/images/bertinoro-big.jpg"><img src="/images/bertinoro.jpg" width="90%"></a></center>

Slides from my three (two-hour) lectures are posted below, along with
some links to relevant papers and resources.

## Class 1: Introduction/Attacks

<center>
<script async class="speakerdeck-embed" data-id="0ad1775bcc244876ac4df1880a864e78" data-ratio="1.77777777777778" src="//speakerdeck.com/assets/embed.js"></script>
</center>

The PDF malware evasion attack is described in this paper: 
<blockquote>
Weilin Xu, Yanjun Qi, and David Evans. 
<em><a href="https://www.cs.virginia.edu/evans/pubs/ndss2016/">Automatically Evading Classifiers: A Case Study on PDF Malware Classifiers</a></em>.
<a href="https://www.internetsociety.org/events/ndss-symposium-2016"><em>Network and Distributed System Security Symposium</em></a> (NDSS). San Diego, CA. 21-24 February 2016. [<a href="https://www.cs.virginia.edu/evans/pubs/ndss2016/evademl.pdf">PDF</a>] [<a href="https://evademl.org/gpevasion/">EvadeML.org</a>]
</blockquote>

## Class 2: Defenses

<center>
<script async class="speakerdeck-embed" data-id="cf560cce9e4b418397d2df3429ddc8f9" data-ratio="1.77777777777778" src="//speakerdeck.com/assets/embed.js"></script>
</center>

This paper describes the feature squeezing framework:
<blockquote>
Weilin Xu, David Evans, and Yanjun Qi. <a href="https://www.cs.virginia.edu/evans/pubs/ndss2018/">Feature Squeezing: Detecting Adversarial Examples in Deep Neural Networks</a></em>. In <a href="https://www.ndss-symposium.org/ndss2018/"><em>2018 Network and Distributed System Security Symposium</em></a>. 18-21 February, San Diego, California. [<a href="https://evademl.org/docs/featuresqueezing.pdf">PDF</a>] [<a href="https://evademl.org/squeezing/">Project</a>]
</blockquote>
This paper introduces cost-sensitive robustness:
<blockquote>
Xiao Zhang and David Evans. <em><a href="https://www.cs.virginia.edu/evans/pubs/iclr2019/">Cost-Sensitive Robustness against Adversarial Examples</a></em>. In <a href="https://iclr.cc/Conferences/2019"><em>Seventh International Conference on Learning Representations</em></a> (ICLR). New Orleans. May 2019. [<a
href="https://arxiv.org/abs/1810.09225">arXiv</a>] [<a
href="https://openreview.net/forum?id=BygANhA9tQ">OpenReview</a>] [<a href="https://evademl.org/docs/cost-sensitive-robustness.pdf">PDF</a>]
</blockquote>


## Class 3: Privacy

<center>
<script async class="speakerdeck-embed" data-id="8b378ae0ac2c4a7588016311d1d76ef8" data-ratio="1.77777777777778" src="//speakerdeck.com/assets/embed.js"></script>
</center>

This (free) book provides an introduction to secure multi-party computation:
<blockquote>
David Evans, Vladimir Kolesnikov and Mike Rosulek. <a href="https://securecomputation.org/"><em>A Pragmatic Introduction to Secure Multi-Party Computation</em></a>. NOW Publishers, December 2018. [[PDF] (Full Text)](https://securecomputation.org/docs/pragmaticmpc.pdf)
</blockquote>

<a href="https://oblivc.org">OblivC.org</a> is an open-source tool for
building secure multi-party computations from high-level (extended C)
code.

This paper describes our work on integrating differential privacy and multi-party computation:
<blockquote>
Bargav Jayaraman, Lingxiao Wang, David Evans and Quanquan
Gu. <em><a href="https://www.cs.virginia.edu/evans/pubs/neurips2018/">Distributed Learning without Distress:
    Privacy-Preserving Empirical Risk Minimization</a></em>. In <a href="https://nips.cc/Conferences/2018/">32<sup>nd</sup>
<em>Conference on Neural Information Processing Systems</em></a>
(NeurIPS). Montreal, Canada. December 2018. [<a
    href="https://www.cs.virginia.edu/evans/pubs/neurips2018/neurips2018.pdf">PDF</a>] [<a
    href="https://youtu.be/rwyWiDyVmjE">Video Summary</a>]
</blockquote>

This paper summarizes our work on evaluating the privacy-utility tradeoffs for machine learning:
<blockquote>
Bargav Jayaraman and David Evans. <em><a href="https://www.cs.virginia.edu/evans/pubs/usenix2019/">Evaluating Differentially Private Machine Learning in Practice</a></em>. In <a
href="https://www.usenix.org/conference/usenixsecurity19">28<sup>th</sup>
USENIX Security Symposium</em></a>. Santa&nbsp;Clara. August 2019.
[<a href="usenix2019/evaluatingdp.pdf">PDF</a>]
[<a href="https://arxiv.org/abs/1902.08874">arXiv</a>]
[<A href="https://github.com/bargavj/EvaluatingDPML">code</a>]
</blockquote>
