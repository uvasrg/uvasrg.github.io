+++
date = "02 Apr 2021"
draft = false
title = "Improved Estimation of Concentration (ICLR 2021)"
author = "David Evans"
categories = ["publications"]
tags = ["adversarial machine learning", "Xiao Zhang", "Jack Prescott", "intrinsic robustness", "ICLR"]
+++

Our paper on [_Improved Estimation of Concentration Under &#8467;<sub>p</sub>-Norm Distance Metrics Using Half Spaces_] (Jack Prescott, <a href="https://people.virginia.edu/~xz7bc/">Xiao Zhang</a>, and David Evans) will be presented at ICLR 2021.

<b>Abstract:</b> Concentration of measure has been argued to be the
fundamental cause of adversarial vulnerability. Mahloujifar et
al. (2019) presented an empirical way to measure the concentration of
a data distribution using samples, and employed it to find lower
bounds on intrinsic robustness for several benchmark
datasets. However, it remains unclear whether these lower bounds are
tight enough to provide a useful approximation for the intrinsic
robustness of a dataset. To gain a deeper understanding of the
concentration of measure phenomenon, we first extend the Gaussian
Isoperimetric Inequality to non-spherical Gaussian measures and
arbitrary &#8467;<sub>p</sub>-norms (<em>p</em> &ge; 2). We leverage these
theoretical insights to design a method that uses half-spaces to
estimate the concentration of any empirical dataset under
&#8467;<sub>p</sub>-norm distance metrics. Our proposed algorithm is more
efficient than Mahloujifar et al. (2019)'s, and experiments on
synthetic datasets and image benchmarks demonstrate that it is able to
find much tighter intrinsic robustness bounds. These tighter estimates
provide further evidence that rules out intrinsic dataset
concentration as a possible explanation for the adversarial
vulnerability of state-of-the-art classifiers.

Here's Jack's video summary of the work:

<center>
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/VELmIHq09pQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</center>

Paper: [arXiv](https://arxiv.org/abs/2103.12913), [Open Review](https://openreview.net/forum?id=BUlyHkzjgmA)  
Code: [_https://github.com/jackbprescott/EMC_HalfSpaces_](https://github.com/jackbprescott/EMC_HalfSpaces)