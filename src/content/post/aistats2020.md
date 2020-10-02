+++
date = "14 Aug 2020"
draft = false
author = "David Evans"
title = "Intrinsic Robustness using Conditional GANs"
categories = ["publications", "presentations"]
tags = ["adversarial machine learning", "AISTATS", "Xiao Zhang", "Jinghui Chen", "Quanquan Gu"]
+++

The video of Xiao's presentation for AISTATS 2020 is now available:
[_Understanding the Intrinsic Robustness of Image Distributions using Conditional Generative Models_](https://slideslive.com/38930305/understanding-the-intrinsic-robustness-of-image-distributions-using-conditional-generative-models)

Starting with Gilmer et al. (2018), several works have demonstrated
the inevitability of adversarial examples based on different
assumptions about the underlying input probability space. It remains
unclear, however, whether these results apply to natural image
distributions. In this work, we assume the underlying data
distribution is captured by some conditional generative model, and
prove intrinsic robustness bounds for a general class of classifiers,
which solves an open problem in Fawzi et al. (2018). Building upon the
state-of-the-art conditional generative models, we study the intrinsic
robustness of two common image benchmarks under _l_<sub>2</sub>
perturbations, and show the existence of a large gap between the
robustness limits implied by our theory and the adversarial robustness
achieved by current state-of-the-art robust models.

<center>
<img src="/images/grobustness.png" width="50%"><br>
<div class="caption">
Comparisons between the theoretical intrinsic robustness bound and the
empirically estimated unconstrained (unc)/in-distribution (in)
adversarial robustness under <em>l</em><sub>2</sub> for ImageNet10
(&epsilon = 3.0). The dotted curve line represents the theoretical
bound on intrinsic robustness with horizontal axis denoting the
different choice of &alpha;. (See paper for details and results in
other settings.)
</div>
</center>


**Paper:** Xiao Zhang, Jinghui Chen, Quanquan Gu, David Evans. [_Understanding the Intrinsic Robustness of Image Distributions using Conditional Generative Models_](https://arxiv.org/abs/2003.00378)), AISTATS 2020. [arXiv](https://arxiv.org/abs/2003.00378) 

**Code:** [_https://github.com/xiaozhanguva/Intrinsic-Rob_](https://github.com/xiaozhanguva/Intrinsic-Rob)

