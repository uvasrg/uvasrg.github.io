+++
date = "24 Mar 2022"
draft = false
title = "ICLR 2022: Understanding Intrinsic Robustness Using Label Uncertainty"
author = "Xiao Zhang"
categories = ["publications"]
tags = ["adversarial machine learning", "Xiao Zhang", "ICLR", "intrinsic robustness"]
+++

(Blog post written by [Xiao Zhang](https://xiao-zhang.net/))

Motivated by the empirical hardness of developing robust classifiers
against adversarial perturbations, researchers began asking the
question “_Does there even exist a robust classifier?_”. This is
formulated as the **_intrinsic robustness problem_** [(Mahloujifar et
al.,
2019)](https://proceedings.neurips.cc/paper/2019/file/46f76a4bda9a9579eab38a8f6eabcda1-Paper.pdf),
where the goal is to characterize the maximum adversarial robustness
possible for a given robust classification problem. Building upon the
connection between adversarial robustness and classifier’s error
region, it has been shown that if we restrict the search to the set of
imperfect classifiers, the intrinsic robustness problem can be reduced
to the **_concentration of measure problem_**.

<p>
<center><img src="/images/figs/concentration.png" width=50% alt="Concentration of Measure"></center>
</p>

In this work, we argue that the standard concentration of measure
problem is not sufficient to capture a realistic intrinsic robustness
limit for a classification problem. In particular, the standard
concentration function is defined as an inherent property regarding
the input metric probability space, which does not take account of the
underlying label information. However, such label information is
essential for any supervised learning problem, including adversarially
robust classification, so must be incorporated into intrinsic
robustness limits. By introducing a novel definition of **_label
uncertainty_**, which characterizes the average uncertainty of label
assignments for an input region, we empirically demonstrate that error
regions induced by state-of-the-art models tend to have much higher
label uncertainty than randomly-selected subsets.

<p>
<center><img src="/images/figs/err_reg_lu.png" width=50% alt="Error Regions have higher label uncertainty"></center>
</p>

This observation motivates us to adapt a concentration estimation
algorithm to account for label uncertainty, where we focus on
understanding the concentration of measure phenomenon with respect to
input regions with label uncertainty exceeding a certain threshold
$\gamma>0$. The intrinsic robustness estimates we obtain by
incorporating label uncertainty (shown as the green dots in the figure
below) are much lower than prior limits, suggesting that compared with
the concentration of measure phenomenon, the **_existence of uncertain
inputs_** may explain more fundamentally the adversarial vulnerability
of state-of-the-art robustly-trained models.

<p>
<center><img src="/images/figs/result.png" width=50% alt="Intrinsic robustness with label uncertainty"></center>
</p>

<b>Paper:</b> [Xiao Zhang](https://xiao-zhang.net) and [David Evans](https://www.cs.virginia.edu/evans/). **_Understanding Intrinsic Robustness Using Label Uncertainty_**. _In [Tenth International Conference on Learning Representations](https://iclr.cc/Conferences/2022) (ICLR), April 2022._ [[PDF](https://openreview.net/pdf?id=6ET9SzlgNX)]  [[OpenReview](https://openreview.net/forum?id=6ET9SzlgNX)] [[ArXiv](https://arxiv.org/abs/2107.03250)]

<b>Code:</b> [_https://github.com/xiaozhanguva/intrinsic_rob_lu_](https://github.com/xiaozhanguva/intrinsic_rob_lu)

<center>
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/YrxO1zM1KuM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</center>
